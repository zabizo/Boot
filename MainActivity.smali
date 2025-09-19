.class public Lnet/typeblog/socks/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final OVERLAY_PERMISSION_REQ_CODE:I = 0x4d2


# instance fields
.field private config:Lorg/json/JSONObject;

.field private final currentVersion:Ljava/lang/String;

.field private getKeyButton:Landroid/widget/Button;

.field private final handler:Landroid/os/Handler;

.field private isDestroyed:Z

.field private keyEditText:Landroid/widget/EditText;

.field private loginButton:Landroid/widget/Button;

.field private progressBar:Landroid/widget/ProgressBar;

.field private warningTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "bot"

    .line 63
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/typeblog/socks/MainActivity;->handler:Landroid/os/Handler;

    const-string v0, "1.0.0"

    .line 55
    iput-object v0, p0, Lnet/typeblog/socks/MainActivity;->currentVersion:Ljava/lang/String;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lnet/typeblog/socks/MainActivity;->isDestroyed:Z

    return-void
.end method

.method private checkForUpdate()V
    .registers 4

    const-string v0, "1.0.0"

    const-string v1, "versionInfo"

    .line 510
    :try_start_4
    iget-object v2, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    return-void

    .line 512
    :cond_d
    iget-object v2, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "latestVersion"

    .line 513
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 515
    invoke-direct {p0, v0, v2}, Lnet/typeblog/socks/MainActivity;->isNewVersionAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 516
    invoke-direct {p0, v1}, Lnet/typeblog/socks/MainActivity;->showUpdateDialog(Lorg/json/JSONObject;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_22} :catch_23

    goto :goto_2b

    :catch_23
    move-exception v0

    const-string v1, "UPDATE"

    const-string v2, "Error checking for updates"

    .line 519
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2b
    :goto_2b
    return-void
.end method

.method private createContinueButton()Landroid/widget/Button;
    .registers 5

    .line 383
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 384
    iget-object v1, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    const-string v2, "continueText"

    const-string v3, "CONTINUE"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "btnTextColor"

    const/4 v2, -0x1

    .line 385
    invoke-direct {p0, v1, v2}, Lnet/typeblog/socks/MainActivity;->getColorFromConfig(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 386
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 387
    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->createGradientButtonBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 388
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0xf0

    invoke-direct {p0, v2}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v2

    const/16 v3, 0x30

    invoke-direct {p0, v3}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x14

    .line 389
    invoke-direct {p0, v2}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 390
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    new-instance v1, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda13;-><init>(Lnet/typeblog/socks/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private createEditTextBackground()Landroid/graphics/drawable/GradientDrawable;
    .registers 4

    .line 668
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 669
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/16 v1, 0x8

    .line 670
    invoke-direct {p0, v1}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v1, 0x1

    .line 671
    invoke-direct {p0, v1}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v1

    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const-string v1, "#1E1E1E"

    .line 672
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method private createGradientButtonBackground()Landroid/graphics/drawable/GradientDrawable;
    .registers 6

    .line 644
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    const-string v2, "btnColor"

    const v3, -0xffff01

    .line 646
    invoke-direct {p0, v2, v3}, Lnet/typeblog/socks/MainActivity;->getColorFromConfig(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    const v3, -0xff0001

    .line 647
    invoke-direct {p0, v2, v3}, Lnet/typeblog/socks/MainActivity;->getColorFromConfig(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 645
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 649
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 650
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    const/16 v1, 0x18

    .line 651
    invoke-direct {p0, v1}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private createLoginButtonBackground()Landroid/graphics/drawable/GradientDrawable;
    .registers 6

    .line 656
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    const-string v2, "#FF416C"

    .line 658
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string v2, "#FF4B2B"

    .line 659
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 657
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 661
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 662
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    const/16 v1, 0x8

    .line 663
    invoke-direct {p0, v1}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private dp(I)I
    .registers 4

    int-to-float p1, p1

    .line 631
    invoke-virtual {p0}, Lnet/typeblog/socks/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 628
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private getColorFromConfig(Ljava/lang/String;I)I
    .registers 8

    .line 637
    :try_start_0
    iget-object v0, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    const-string v1, "#%06X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    and-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    return p1

    :catch_1f
    return p2
.end method

.method private getDiscordUrl()Ljava/lang/String;
    .registers 7

    const-string v0, ""

    .line 581
    :try_start_2
    iget-object v1, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    const-string v2, "socialButtons"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 582
    :goto_b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 583
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "type"

    .line 584
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "discord"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string v1, "url"

    .line 585
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_29} :catch_2d

    return-object v0

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :catch_2d
    move-exception v1

    .line 589
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_31
    return-object v0
.end method

.method private isNewVersionAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const-string v0, "\\."

    .line 524
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 525
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 527
    :goto_c
    array-length v2, p1

    array-length v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2a

    .line 528
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 529
    aget-object v4, p2, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v2, :cond_24

    return v3

    :cond_24
    if-ge v4, v2, :cond_27

    return v0

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 537
    :cond_2a
    array-length p2, p2

    array-length p1, p1

    if-le p2, p1, :cond_2f

    const/4 v0, 0x1

    :cond_2f
    return v0
.end method

.method static synthetic lambda$openProfileFragment$11(Landroid/widget/VideoView;Landroid/media/MediaPlayer;II)Z
    .registers 4

    const/4 p1, 0x0

    const/4 p3, 0x3

    if-ne p2, p3, :cond_7

    .line 471
    invoke-virtual {p0, p1}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    :cond_7
    return p1
.end method

.method static synthetic lambda$showUpdateDialog$15(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 3

    const/4 p0, 0x4

    if-ne p1, p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private loadConfig()V
    .registers 3

    .line 88
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda3;-><init>(Lnet/typeblog/socks/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 139
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private openProfileFragment()V
    .registers 7

    .line 432
    :try_start_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v1, -0x1000000

    .line 433
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 435
    new-instance v1, Landroid/widget/VideoView;

    invoke-direct {v1, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 436
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 440
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 441
    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_89

    .line 444
    :try_start_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.resource://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/typeblog/socks/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v4, 0x7f0f0000

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_42} :catch_43

    goto :goto_50

    :catch_43
    move-exception v2

    :try_start_44
    const-string v4, "VideoView"

    const-string v5, "Couldn\'t load background video"

    .line 446
    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, 0x8

    .line 447
    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 450
    :goto_50
    new-instance v2, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, v1}, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda11;-><init>(Lnet/typeblog/socks/MainActivity;Landroid/widget/VideoView;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 484
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 486
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x1020002

    .line 487
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 488
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 492
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 495
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/MainActivity;->setContentView(Landroid/view/View;)V

    .line 497
    invoke-virtual {p0}, Lnet/typeblog/socks/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lnet/typeblog/socks/ProfileFragment;

    invoke-direct {v1}, Lnet/typeblog/socks/ProfileFragment;-><init>()V

    .line 498
    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_88} :catch_89

    goto :goto_99

    :catch_89
    move-exception v0

    const-string v1, "Fragment"

    const-string v2, "Error opening profile"

    .line 502
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "Failed to open profile"

    .line 503
    invoke-direct {p0, v0}, Lnet/typeblog/socks/MainActivity;->showToast(Ljava/lang/String;)V

    .line 504
    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->setupMainUI()V

    :goto_99
    return-void
.end method

.method private openUrl(Ljava/lang/String;)V
    .registers 6

    const-string v0, "android.intent.action.VIEW"

    .line 595
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string p1, "Invalid URL"

    .line 596
    invoke-direct {p0, p1}, Lnet/typeblog/socks/MainActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 600
    :cond_e
    :try_start_e
    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    .line 601
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 602
    new-instance v2, Landroid/content/Intent;

    const-string v3, "http://"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 603
    invoke-virtual {p0}, Lnet/typeblog/socks/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 604
    invoke-virtual {p0}, Lnet/typeblog/socks/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    :cond_41
    invoke-virtual {p0, v1}, Lnet/typeblog/socks/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_44} :catch_45

    goto :goto_61

    :catch_45
    move-exception v0

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OpenURL"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "Failed to open link. Please try again."

    .line 609
    invoke-direct {p0, p1}, Lnet/typeblog/socks/MainActivity;->showToast(Ljava/lang/String;)V

    :goto_61
    return-void
.end method

.method private recoverFromError()V
    .registers 3

    .line 79
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "Loading application..."

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v1, -0x1

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/MainActivity;->setContentView(Landroid/view/View;)V

    .line 84
    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->loadConfig()V

    return-void
.end method

.method private resetLoginForm()V
    .registers 3

    .line 348
    iget-boolean v0, p0, Lnet/typeblog/socks/MainActivity;->isDestroyed:Z

    if-nez v0, :cond_16

    .line 349
    iget-object v0, p0, Lnet/typeblog/socks/MainActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lnet/typeblog/socks/MainActivity;->keyEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 351
    iget-object v0, p0, Lnet/typeblog/socks/MainActivity;->loginButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_16
    return-void
.end method

.method private setupMainUI()V
    .registers 8

    .line 357
    :try_start_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v1, "bgColor"

    const/high16 v2, -0x1000000

    .line 358
    invoke-direct {p0, v1, v2}, Lnet/typeblog/socks/MainActivity;->getColorFromConfig(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 360
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 361
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    .line 362
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v3, 0x18

    .line 363
    invoke-direct {p0, v3}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v3}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v3}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {p0, v3}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v3

    invoke-virtual {v1, v4, v5, v6, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 365
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 366
    iget-object v4, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    const-string v5, "appIcon"

    const-string v6, "🔒"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x42400000    # 48.0f

    .line 367
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v4, "accentColor"

    const v5, -0xff0001

    .line 368
    invoke-direct {p0, v4, v5}, Lnet/typeblog/socks/MainActivity;->getColorFromConfig(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 369
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 370
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 372
    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->createContinueButton()Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 374
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 375
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/MainActivity;->setContentView(Landroid/view/View;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_6a

    goto :goto_75

    :catch_6a
    move-exception v0

    const-string v1, "MainUI"

    const-string v2, "Error setting up main UI"

    .line 377
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->recoverFromError()V

    :goto_75
    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .registers 3

    .line 614
    new-instance v0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda6;-><init>(Lnet/typeblog/socks/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/typeblog/socks/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showLoginScreen()V
    .registers 14

    .line 151
    :try_start_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 152
    iget-object v1, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    const-string v2, "loginBgColor"

    const-string v3, "#121212"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 153
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 159
    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 161
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x11

    .line 163
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v5, 0x20

    .line 164
    invoke-direct {p0, v5}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {p0, v5}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v7

    invoke-direct {p0, v5}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v8

    invoke-direct {p0, v5}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v5

    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 167
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 168
    iget-object v6, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    const-string v7, "loginIcon"

    const-string v8, "👻"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v6, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    const-string v7, "loginIconSize"

    const/16 v8, 0x24

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 170
    iget-object v6, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    const-string v7, "loginAccentColor"

    const-string v8, "#4FC3F7"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 172
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x10

    .line 176
    invoke-direct {p0, v8}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v9

    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 177
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 182
    iget-object v6, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    const-string v9, "loginTitle"

    const-string v10, "GHOSTBOT LOGIN"

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41c00000    # 24.0f

    .line 183
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 184
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 186
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 187
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x8

    .line 191
    invoke-direct {p0, v9}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v10

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 192
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lnet/typeblog/socks/MainActivity;->warningTextView:Landroid/widget/TextView;

    const-string v6, "All free services are available on our Discord server\n\nجميع الخدمات المجانية متوفرة على سيرفر الديسكورد"

    .line 197
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v5, p0, Lnet/typeblog/socks/MainActivity;->warningTextView:Landroid/widget/TextView;

    const/high16 v6, -0x10000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object v5, p0, Lnet/typeblog/socks/MainActivity;->warningTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 200
    iget-object v5, p0, Lnet/typeblog/socks/MainActivity;->warningTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 201
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 205
    invoke-direct {p0, v8}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 206
    iget-object v6, p0, Lnet/typeblog/socks/MainActivity;->warningTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v5, p0, Lnet/typeblog/socks/MainActivity;->warningTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 210
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lnet/typeblog/socks/MainActivity;->keyEditText:Landroid/widget/EditText;

    .line 211
    iget-object v6, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    const-string v7, "loginHint"

    const-string v10, "Enter access key"

    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v5, p0, Lnet/typeblog/socks/MainActivity;->keyEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 213
    iget-object v5, p0, Lnet/typeblog/socks/MainActivity;->keyEditText:Landroid/widget/EditText;

    const-string v6, "#AAAAAA"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 214
    iget-object v5, p0, Lnet/typeblog/socks/MainActivity;->keyEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->createEditTextBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 215
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x30

    .line 217
    invoke-direct {p0, v6}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v7

    invoke-direct {v5, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 219
    invoke-direct {p0, v8}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 220
    iget-object v7, p0, Lnet/typeblog/socks/MainActivity;->keyEditText:Landroid/widget/EditText;

    invoke-direct {p0, v8}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v10

    invoke-direct {p0, v8}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v12, v11, v12}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 221
    iget-object v7, p0, Lnet/typeblog/socks/MainActivity;->keyEditText:Landroid/widget/EditText;

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget-object v5, p0, Lnet/typeblog/socks/MainActivity;->keyEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lnet/typeblog/socks/MainActivity;->loginButton:Landroid/widget/Button;

    .line 226
    iget-object v7, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    const-string v10, "loginButtonText"

    const-string v11, "LOGIN"

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v5, p0, Lnet/typeblog/socks/MainActivity;->loginButton:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 228
    iget-object v5, p0, Lnet/typeblog/socks/MainActivity;->loginButton:Landroid/widget/Button;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setTextSize(F)V

    .line 229
    iget-object v5, p0, Lnet/typeblog/socks/MainActivity;->loginButton:Landroid/widget/Button;

    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->createLoginButtonBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 230
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 232
    invoke-direct {p0, v6}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v10

    invoke-direct {v5, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 234
    invoke-direct {p0, v8}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 235
    iget-object v10, p0, Lnet/typeblog/socks/MainActivity;->loginButton:Landroid/widget/Button;

    invoke-virtual {v10, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iget-object v5, p0, Lnet/typeblog/socks/MainActivity;->loginButton:Landroid/widget/Button;

    new-instance v10, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda14;

    invoke-direct {v10, p0}, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda14;-><init>(Lnet/typeblog/socks/MainActivity;)V

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v5, p0, Lnet/typeblog/socks/MainActivity;->loginButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v10, " Instagram"

    .line 241
    invoke-virtual {v5, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 243
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setTextSize(F)V

    .line 244
    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->createGradientButtonBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 245
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 247
    invoke-direct {p0, v6}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v11

    invoke-direct {v10, v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 249
    invoke-direct {p0, v8}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v11

    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 250
    invoke-virtual {v5, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    new-instance v10, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda15;

    invoke-direct {v10, p0}, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda15;-><init>(Lnet/typeblog/socks/MainActivity;)V

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lnet/typeblog/socks/MainActivity;->getKeyButton:Landroid/widget/Button;

    const-string v10, "GET ACCESS KEY\nالحصول على مفتاح تفعيل"

    .line 259
    invoke-virtual {v5, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v5, p0, Lnet/typeblog/socks/MainActivity;->getKeyButton:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 261
    iget-object v5, p0, Lnet/typeblog/socks/MainActivity;->getKeyButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setTextSize(F)V

    .line 262
    iget-object v5, p0, Lnet/typeblog/socks/MainActivity;->getKeyButton:Landroid/widget/Button;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 263
    iget-object v5, p0, Lnet/typeblog/socks/MainActivity;->getKeyButton:Landroid/widget/Button;

    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->createLoginButtonBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 264
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x3c

    .line 266
    invoke-direct {p0, v7}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v7

    invoke-direct {v5, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 268
    invoke-direct {p0, v8}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v2

    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 269
    iget-object v2, p0, Lnet/typeblog/socks/MainActivity;->getKeyButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    iget-object v2, p0, Lnet/typeblog/socks/MainActivity;->getKeyButton:Landroid/widget/Button;

    new-instance v5, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda16;

    invoke-direct {v5, p0}, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda16;-><init>(Lnet/typeblog/socks/MainActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v2, p0, Lnet/typeblog/socks/MainActivity;->getKeyButton:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 274
    new-instance v2, Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    const v7, 0x101007a

    invoke-direct {v2, p0, v5, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lnet/typeblog/socks/MainActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 275
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 276
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 277
    invoke-direct {p0, v6}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v6}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 279
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 280
    invoke-direct {p0, v8}, Lnet/typeblog/socks/MainActivity;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 281
    iget-object v3, p0, Lnet/typeblog/socks/MainActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    iget-object v2, p0, Lnet/typeblog/socks/MainActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 285
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 286
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/MainActivity;->setContentView(Landroid/view/View;)V
    :try_end_252
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_252} :catch_253

    goto :goto_25e

    :catch_253
    move-exception v0

    const-string v1, "LoginScreen"

    const-string v2, "Error showing login screen"

    .line 288
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->recoverFromError()V

    :goto_25e
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 3

    .line 622
    iget-boolean v0, p0, Lnet/typeblog/socks/MainActivity;->isDestroyed:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 623
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_c
    return-void
.end method

.method private showUpdateDialog(Lorg/json/JSONObject;)V
    .registers 8

    const-string v0, "showDiscordButton"

    .line 542
    :try_start_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "title"

    const-string v3, "Update Available"

    .line 543
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "message"

    const-string v3, "New version available"

    .line 544
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 545
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v3, "downloadButtonText"

    const-string v4, "Download"

    .line 547
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, p1}, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda8;-><init>(Lnet/typeblog/socks/MainActivity;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x1

    .line 551
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4b

    const-string v4, "discordButtonText"

    const-string v5, "Discord"

    .line 552
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda0;-><init>(Lnet/typeblog/socks/MainActivity;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 557
    :cond_4b
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 558
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 561
    sget-object v2, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda9;->INSTANCE:Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda9;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 568
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    const/4 v2, -0x1

    .line 570
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const v4, -0xff0100

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 571
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7f

    const/4 p1, -0x3

    .line 572
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const v0, -0xffff01

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_76} :catch_77

    goto :goto_7f

    :catch_77
    move-exception p1

    const-string v0, "UpdateDialog"

    const-string v1, "Error showing update dialog"

    .line 575
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7f
    :goto_7f
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .registers 4

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "Please enter access key"

    .line 295
    invoke-direct {p0, p1}, Lnet/typeblog/socks/MainActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 299
    :cond_c
    iget-object v0, p0, Lnet/typeblog/socks/MainActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lnet/typeblog/socks/MainActivity;->keyEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 301
    iget-object v0, p0, Lnet/typeblog/socks/MainActivity;->loginButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 303
    iget-object v0, p0, Lnet/typeblog/socks/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda7;-><init>(Lnet/typeblog/socks/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public native getConfigUrl()Ljava/lang/String;
.end method

.method public synthetic lambda$createContinueButton$8$net-typeblog-socks-MainActivity(Landroid/view/View;)V
    .registers 4

    .line 405
    iget-boolean v0, p0, Lnet/typeblog/socks/MainActivity;->isDestroyed:Z

    if-nez v0, :cond_3c

    .line 406
    invoke-virtual {p0}, Lnet/typeblog/socks/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 408
    iget-object p1, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    const/4 v0, 0x0

    const-string v1, "autoRedirect"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 409
    iget-object p1, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    const-string v0, "redirectUrl"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 410
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 411
    invoke-direct {p0, p1}, Lnet/typeblog/socks/MainActivity;->openUrl(Ljava/lang/String;)V

    goto :goto_3c

    :cond_30
    const-string p1, "Redirect URL not found"

    .line 413
    invoke-direct {p0, p1}, Lnet/typeblog/socks/MainActivity;->showToast(Ljava/lang/String;)V

    .line 414
    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->openProfileFragment()V

    goto :goto_3c

    .line 417
    :cond_39
    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->openProfileFragment()V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public synthetic lambda$createContinueButton$9$net-typeblog-socks-MainActivity(Landroid/view/View;)V
    .registers 6

    .line 394
    :try_start_0
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x1000000

    .line 395
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 396
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 400
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    invoke-virtual {p0}, Lnet/typeblog/socks/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 404
    iget-object v0, p0, Lnet/typeblog/socks/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda5;-><init>(Lnet/typeblog/socks/MainActivity;Landroid/view/View;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_38

    :catch_2d
    move-exception p1

    const-string v0, "ContinueButton"

    const-string v1, "Error handling continue action"

    .line 422
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->openProfileFragment()V

    :goto_38
    return-void
.end method

.method public synthetic lambda$loadConfig$0$net-typeblog-socks-MainActivity()V
    .registers 4

    .line 107
    iget-boolean v0, p0, Lnet/typeblog/socks/MainActivity;->isDestroyed:Z

    if-nez v0, :cond_25

    .line 109
    :try_start_4
    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->checkForUpdate()V

    .line 110
    iget-object v0, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    const-string v1, "enableLogin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 111
    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->showLoginScreen()V

    goto :goto_25

    .line 113
    :cond_16
    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->setupMainUI()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_1a

    goto :goto_25

    :catch_1a
    move-exception v0

    const-string v1, "UI Setup"

    const-string v2, "Error setting up UI"

    .line 116
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->recoverFromError()V

    :cond_25
    :goto_25
    return-void
.end method

.method public synthetic lambda$loadConfig$1$net-typeblog-socks-MainActivity()V
    .registers 2

    .line 136
    iget-boolean v0, p0, Lnet/typeblog/socks/MainActivity;->isDestroyed:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->showLoginScreen()V

    :cond_7
    return-void
.end method

.method public synthetic lambda$loadConfig$2$net-typeblog-socks-MainActivity()V
    .registers 5

    const/4 v0, 0x1

    .line 90
    :try_start_1
    invoke-virtual {p0}, Lnet/typeblog/socks/MainActivity;->getConfigUrl()Ljava/lang/String;

    move-result-object v1

    .line 91
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "GET"

    .line 92
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x2710

    .line 93
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 94
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 95
    invoke-virtual {v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 97
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_59

    .line 98
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 99
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    :goto_3b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_45

    .line 103
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 105
    :cond_45
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    .line 106
    new-instance v1, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda1;-><init>(Lnet/typeblog/socks/MainActivity;)V

    invoke-virtual {p0, v1}, Lnet/typeblog/socks/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_97

    :cond_59
    const-string v1, "Failed to load config"

    .line 122
    invoke-direct {p0, v1}, Lnet/typeblog/socks/MainActivity;->showError(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5e} :catch_5f

    goto :goto_97

    :catch_5f
    move-exception v1

    const-string v2, "CONFIG"

    const-string v3, "Error loading config"

    .line 125
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, "Connection error"

    .line 126
    invoke-direct {p0, v1}, Lnet/typeblog/socks/MainActivity;->showError(Ljava/lang/String;)V

    .line 128
    :try_start_6c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    const-string v2, "enableLogin"

    .line 129
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 130
    iget-object v0, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    const-string v1, "loginIcon"

    const-string v2, "👻"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    iget-object v0, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    const-string v1, "loginIconSize"

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_8a
    .catch Lorg/json/JSONException; {:try_start_6c .. :try_end_8a} :catch_8b

    goto :goto_8f

    :catch_8b
    move-exception v0

    .line 133
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 135
    :goto_8f
    new-instance v0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda2;-><init>(Lnet/typeblog/socks/MainActivity;)V

    invoke-virtual {p0, v0}, Lnet/typeblog/socks/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_97
    return-void
.end method

.method public synthetic lambda$openProfileFragment$10$net-typeblog-socks-MainActivity(Landroid/widget/VideoView;Landroid/media/MediaPlayer;II)V
    .registers 9

    int-to-float p2, p3

    int-to-float p3, p4

    div-float/2addr p2, p3

    .line 454
    invoke-virtual {p0}, Lnet/typeblog/socks/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 455
    invoke-virtual {p0}, Lnet/typeblog/socks/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, p3

    int-to-float v1, p4

    div-float v2, v0, v1

    .line 458
    invoke-virtual {p1}, Landroid/widget/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    cmpl-float v2, p2, v2

    if-lez v2, :cond_2c

    .line 460
    iput p3, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    div-float/2addr v0, p2

    float-to-int p2, v0

    .line 461
    iput p2, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_33

    :cond_2c
    mul-float v1, v1, p2

    float-to-int p2, v1

    .line 463
    iput p2, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 464
    iput p4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 466
    :goto_33
    invoke-virtual {p1, v3}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public synthetic lambda$openProfileFragment$12$net-typeblog-socks-MainActivity(Landroid/widget/VideoView;Landroid/media/MediaPlayer;)V
    .registers 5

    const/4 v0, 0x1

    .line 451
    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 452
    new-instance v0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda12;-><init>(Lnet/typeblog/socks/MainActivity;Landroid/widget/VideoView;)V

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 469
    new-instance v0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda10;-><init>(Landroid/widget/VideoView;)V

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 477
    :try_start_14
    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_25

    :catch_18
    move-exception p2

    const-string v0, "VideoView"

    const-string v1, "Error starting video"

    .line 479
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p2, 0x8

    .line 480
    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setVisibility(I)V

    :goto_25
    return-void
.end method

.method public synthetic lambda$showError$16$net-typeblog-socks-MainActivity(Ljava/lang/String;)V
    .registers 3

    .line 615
    iget-boolean v0, p0, Lnet/typeblog/socks/MainActivity;->isDestroyed:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 616
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_c
    return-void
.end method

.method public synthetic lambda$showLoginScreen$3$net-typeblog-socks-MainActivity(Landroid/view/View;)V
    .registers 2

    .line 236
    iget-object p1, p0, Lnet/typeblog/socks/MainActivity;->keyEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/typeblog/socks/MainActivity;->validateKey(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$showLoginScreen$4$net-typeblog-socks-MainActivity(Landroid/view/View;)V
    .registers 4

    .line 252
    iget-object p1, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    const-string v0, "discordUrl"

    const-string v1, "https://www.instagram.com/achraf.antiban?igsh=MXhmdTF5ejkwMm5nZA=="

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/typeblog/socks/MainActivity;->openUrl(Ljava/lang/String;)V

    const-string p1, "Follow me on Instagram"

    const/4 v0, 0x0

    .line 253
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic lambda$showLoginScreen$5$net-typeblog-socks-MainActivity(Landroid/view/View;)V
    .registers 4

    .line 270
    iget-object p1, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    const-string v0, "getKeyUrl"

    const-string v1, "https://discord.gg/mbPspkn2xH"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/typeblog/socks/MainActivity;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$showUpdateDialog$13$net-typeblog-socks-MainActivity(Lorg/json/JSONObject;Landroid/content/DialogInterface;I)V
    .registers 4

    const-string p2, "downloadUrl"

    const-string p3, ""

    .line 548
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/typeblog/socks/MainActivity;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$showUpdateDialog$14$net-typeblog-socks-MainActivity(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 553
    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->getDiscordUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/typeblog/socks/MainActivity;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$validateKey$6$net-typeblog-socks-MainActivity()V
    .registers 3

    .line 323
    iget-boolean v0, p0, Lnet/typeblog/socks/MainActivity;->isDestroyed:Z

    if-nez v0, :cond_e

    .line 324
    iget-object v0, p0, Lnet/typeblog/socks/MainActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 325
    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->setupMainUI()V

    :cond_e
    return-void
.end method

.method public synthetic lambda$validateKey$7$net-typeblog-socks-MainActivity(Ljava/lang/String;)V
    .registers 7

    const-string v0, "invalidKeyRedirect"

    const-string v1, "validKeys"

    .line 305
    :try_start_4
    iget-object v2, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 306
    iget-object v2, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 312
    :goto_18
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_31

    .line 314
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 315
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v2, 0x1

    goto :goto_31

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_31
    :goto_31
    if-eqz v2, :cond_40

    .line 322
    iget-object p1, p0, Lnet/typeblog/socks/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda4;-><init>(Lnet/typeblog/socks/MainActivity;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_73

    :cond_40
    const-string p1, "Invalid access key"

    .line 329
    invoke-direct {p0, p1}, Lnet/typeblog/socks/MainActivity;->showToast(Ljava/lang/String;)V

    .line 330
    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->resetLoginForm()V

    .line 331
    iget-object p1, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 332
    iget-object p1, p0, Lnet/typeblog/socks/MainActivity;->config:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/typeblog/socks/MainActivity;->openUrl(Ljava/lang/String;)V

    goto :goto_73

    :cond_5a
    const-string p1, "Key validation not configured"

    .line 336
    invoke-direct {p0, p1}, Lnet/typeblog/socks/MainActivity;->showToast(Ljava/lang/String;)V

    .line 337
    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->resetLoginForm()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_62} :catch_63

    goto :goto_73

    :catch_63
    move-exception p1

    const-string v0, "KEY_VALIDATION"

    const-string v1, "Error validating key"

    .line 340
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "Validation error"

    .line 341
    invoke-direct {p0, p1}, Lnet/typeblog/socks/MainActivity;->showToast(Ljava/lang/String;)V

    .line 342
    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->resetLoginForm()V

    :cond_73
    :goto_73
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    :try_start_3
    invoke-virtual {p0}, Lnet/typeblog/socks/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->loadConfig()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_f

    goto :goto_1a

    :catch_f
    move-exception p1

    const-string v0, "MainActivity"

    const-string v1, "Initialization error"

    .line 73
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    invoke-direct {p0}, Lnet/typeblog/socks/MainActivity;->recoverFromError()V

    :goto_1a
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lnet/typeblog/socks/MainActivity;->isDestroyed:Z

    .line 146
    iget-object v0, p0, Lnet/typeblog/socks/MainActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onLowMemory()V
    .registers 3

    .line 678
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    const-string v0, "Memory"

    const-string v1, "Low memory warning received"

    .line 679
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
