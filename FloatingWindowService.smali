.class public Lnet/typeblog/socks/FloatingWindowService;
.super Landroid/app/Service;
.source "FloatingWindowService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/typeblog/socks/FloatingWindowService$BackgroundTask;
    }
.end annotation


# instance fields
.field private BSW5mode:Ljava/lang/Boolean;

.field private BSWBacklastGroup:Ljava/lang/Boolean;

.field private BSWBotCommand:Ljava/lang/Boolean;

.field private BSWLVL:Ljava/lang/Boolean;

.field private BSWLike:Ljava/lang/Boolean;

.field private BSWMenaServer:Ljava/lang/Boolean;

.field private BSWSPY:Ljava/lang/Boolean;

.field private BSWSpamAntikick:Ljava/lang/Boolean;

.field private BSWSpamInvite:Ljava/lang/Boolean;

.field private BSWspamchat:Ljava/lang/Boolean;

.field private SW5mode:Landroid/widget/Switch;

.field private SWBacklastGroup:Landroid/widget/Switch;

.field private SWBotCommand:Landroid/widget/Switch;

.field private SWLVL:Landroid/widget/Switch;

.field private SWLike:Landroid/widget/Switch;

.field private SWMenaServer:Landroid/widget/Switch;

.field private SWSPY:Landroid/widget/Switch;

.field private SWSpamAntikick:Landroid/widget/Switch;

.field private SWSpamInvite:Landroid/widget/Switch;

.field private SWspamchat:Landroid/widget/Switch;

.field private buttonLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private buttonView:Landroid/view/View;

.field private floatingView:Landroid/view/View;

.field private floatingWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field private isButtonVisible:Z

.field private isFloatingWindowVisible:Z

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 42
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 30
    iput-boolean v0, p0, Lnet/typeblog/socks/FloatingWindowService;->isFloatingWindowVisible:Z

    .line 31
    iput-boolean v0, p0, Lnet/typeblog/socks/FloatingWindowService;->isButtonVisible:Z

    .line 42
    iput-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWSpamAntikick:Ljava/lang/Boolean;

    iput-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSW5mode:Ljava/lang/Boolean;

    iput-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWspamchat:Ljava/lang/Boolean;

    iput-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWSPY:Ljava/lang/Boolean;

    iput-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWBacklastGroup:Ljava/lang/Boolean;

    iput-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWSpamInvite:Ljava/lang/Boolean;

    iput-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWBotCommand:Ljava/lang/Boolean;

    iput-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWMenaServer:Ljava/lang/Boolean;

    iput-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWLVL:Ljava/lang/Boolean;

    iput-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWLike:Ljava/lang/Boolean;

    return-void
.end method

.method private GetButtonStatues()V
    .registers 7

    .line 153
    new-instance v0, Lnet/typeblog/socks/util/SendCommend4respons;

    invoke-direct {v0}, Lnet/typeblog/socks/util/SendCommend4respons;-><init>()V

    const-string v0, "OP1"

    .line 154
    invoke-static {v0}, Lnet/typeblog/socks/util/SendCommend4respons;->main(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ON"

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "#FF0000"

    const/4 v4, 0x0

    if-eqz v0, :cond_1d

    .line 157
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SW5mode:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_2b

    .line 160
    :cond_1d
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SW5mode:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SW5mode:Landroid/widget/Switch;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setTextColor(I)V

    :goto_2b
    const-string v0, "OP2"

    .line 165
    invoke-static {v0}, Lnet/typeblog/socks/util/SendCommend4respons;->main(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 167
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWSpamAntikick:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_4b

    .line 169
    :cond_3d
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWSpamAntikick:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWSpamAntikick:Landroid/widget/Switch;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setTextColor(I)V

    :goto_4b
    const-string v0, "OP3"

    .line 172
    invoke-static {v0}, Lnet/typeblog/socks/util/SendCommend4respons;->main(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 174
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWspamchat:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_6b

    .line 177
    :cond_5d
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWspamchat:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWspamchat:Landroid/widget/Switch;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setTextColor(I)V

    :goto_6b
    const-string v0, "OP4"

    .line 180
    invoke-static {v0}, Lnet/typeblog/socks/util/SendCommend4respons;->main(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 182
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWSPY:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_8b

    .line 184
    :cond_7d
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWSPY:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWSPY:Landroid/widget/Switch;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setTextColor(I)V

    :goto_8b
    const-string v0, "OP5"

    .line 187
    invoke-static {v0}, Lnet/typeblog/socks/util/SendCommend4respons;->main(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 189
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWBacklastGroup:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_ab

    .line 191
    :cond_9d
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWBacklastGroup:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 192
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWBacklastGroup:Landroid/widget/Switch;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setTextColor(I)V

    :goto_ab
    const-string v0, "OP6"

    .line 194
    invoke-static {v0}, Lnet/typeblog/socks/util/SendCommend4respons;->main(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 196
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWSpamInvite:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_cb

    .line 198
    :cond_bd
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWSpamInvite:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 199
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWSpamInvite:Landroid/widget/Switch;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setTextColor(I)V

    :goto_cb
    const-string v0, "OP7"

    .line 201
    invoke-static {v0}, Lnet/typeblog/socks/util/SendCommend4respons;->main(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 203
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWBotCommand:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_eb

    .line 205
    :cond_dd
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWBotCommand:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 206
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWBotCommand:Landroid/widget/Switch;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setTextColor(I)V

    :goto_eb
    const-string v0, "OP8"

    .line 208
    invoke-static {v0}, Lnet/typeblog/socks/util/SendCommend4respons;->main(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 210
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWMenaServer:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_10b

    .line 212
    :cond_fd
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWMenaServer:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWMenaServer:Landroid/widget/Switch;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setTextColor(I)V

    :goto_10b
    const-string v0, "OP9"

    .line 215
    invoke-static {v0}, Lnet/typeblog/socks/util/SendCommend4respons;->main(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 217
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWLVL:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_12b

    .line 219
    :cond_11d
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWLVL:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 220
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWLVL:Landroid/widget/Switch;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setTextColor(I)V

    :goto_12b
    const-string v0, "OP10"

    .line 222
    invoke-static {v0}, Lnet/typeblog/socks/util/SendCommend4respons;->main(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 224
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWLike:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_14b

    .line 226
    :cond_13d
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWLike:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWLike:Landroid/widget/Switch;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTextColor(I)V

    :goto_14b
    return-void
.end method

.method static synthetic access$000(Lnet/typeblog/socks/FloatingWindowService;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lnet/typeblog/socks/FloatingWindowService;->hideFloatingWindow()V

    return-void
.end method

.method static synthetic access$100(Lnet/typeblog/socks/FloatingWindowService;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lnet/typeblog/socks/FloatingWindowService;->showButton()V

    return-void
.end method

.method static synthetic access$1002(Lnet/typeblog/socks/FloatingWindowService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .line 28
    iput-object p1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWBacklastGroup:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1102(Lnet/typeblog/socks/FloatingWindowService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .line 28
    iput-object p1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWSpamInvite:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1202(Lnet/typeblog/socks/FloatingWindowService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .line 28
    iput-object p1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWBotCommand:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1302(Lnet/typeblog/socks/FloatingWindowService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .line 28
    iput-object p1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWMenaServer:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1402(Lnet/typeblog/socks/FloatingWindowService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .line 28
    iput-object p1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWLVL:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1502(Lnet/typeblog/socks/FloatingWindowService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .line 28
    iput-object p1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWLike:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1600(Lnet/typeblog/socks/FloatingWindowService;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lnet/typeblog/socks/FloatingWindowService;->hideButton()V

    return-void
.end method

.method static synthetic access$1700(Lnet/typeblog/socks/FloatingWindowService;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lnet/typeblog/socks/FloatingWindowService;->showFloatingWindow()V

    return-void
.end method

.method static synthetic access$1800(Lnet/typeblog/socks/FloatingWindowService;)Landroid/view/WindowManager$LayoutParams;
    .registers 1

    .line 28
    iget-object p0, p0, Lnet/typeblog/socks/FloatingWindowService;->buttonLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$1900(Lnet/typeblog/socks/FloatingWindowService;)Landroid/view/View;
    .registers 1

    .line 28
    iget-object p0, p0, Lnet/typeblog/socks/FloatingWindowService;->buttonView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lnet/typeblog/socks/FloatingWindowService;)Landroid/view/WindowManager$LayoutParams;
    .registers 1

    .line 28
    iget-object p0, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$300(Lnet/typeblog/socks/FloatingWindowService;)Landroid/view/View;
    .registers 1

    .line 28
    iget-object p0, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lnet/typeblog/socks/FloatingWindowService;)Landroid/view/WindowManager;
    .registers 1

    .line 28
    iget-object p0, p0, Lnet/typeblog/socks/FloatingWindowService;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$500(Lnet/typeblog/socks/FloatingWindowService;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lnet/typeblog/socks/FloatingWindowService;->GetButtonStatues()V

    return-void
.end method

.method static synthetic access$602(Lnet/typeblog/socks/FloatingWindowService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .line 28
    iput-object p1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWSpamAntikick:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$702(Lnet/typeblog/socks/FloatingWindowService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .line 28
    iput-object p1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWspamchat:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$802(Lnet/typeblog/socks/FloatingWindowService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .line 28
    iput-object p1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSW5mode:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$902(Lnet/typeblog/socks/FloatingWindowService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .line 28
    iput-object p1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWSPY:Ljava/lang/Boolean;

    return-object p1
.end method

.method private hideButton()V
    .registers 3

    .line 482
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->buttonView:Landroid/view/View;

    if-eqz v1, :cond_e

    .line 483
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 484
    iput-boolean v0, p0, Lnet/typeblog/socks/FloatingWindowService;->isButtonVisible:Z

    :cond_e
    return-void
.end method

.method private hideFloatingWindow()V
    .registers 3

    .line 383
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingView:Landroid/view/View;

    if-eqz v1, :cond_e

    .line 384
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 385
    iput-boolean v0, p0, Lnet/typeblog/socks/FloatingWindowService;->isFloatingWindowVisible:Z

    :cond_e
    return-void
.end method

.method private options()V
    .registers 3

    .line 233
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingView:Landroid/view/View;

    const v1, 0x7f090112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWSpamAntikick:Landroid/widget/Switch;

    .line 234
    new-instance v1, Lnet/typeblog/socks/FloatingWindowService$3;

    invoke-direct {v1, p0}, Lnet/typeblog/socks/FloatingWindowService$3;-><init>(Lnet/typeblog/socks/FloatingWindowService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 247
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingView:Landroid/view/View;

    const v1, 0x7f090113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWspamchat:Landroid/widget/Switch;

    .line 248
    new-instance v1, Lnet/typeblog/socks/FloatingWindowService$4;

    invoke-direct {v1, p0}, Lnet/typeblog/socks/FloatingWindowService$4;-><init>(Lnet/typeblog/socks/FloatingWindowService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 262
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingView:Landroid/view/View;

    const v1, 0x7f090110

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SW5mode:Landroid/widget/Switch;

    .line 263
    new-instance v1, Lnet/typeblog/socks/FloatingWindowService$5;

    invoke-direct {v1, p0}, Lnet/typeblog/socks/FloatingWindowService$5;-><init>(Lnet/typeblog/socks/FloatingWindowService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 274
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingView:Landroid/view/View;

    const v1, 0x7f090114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWSPY:Landroid/widget/Switch;

    .line 275
    new-instance v1, Lnet/typeblog/socks/FloatingWindowService$6;

    invoke-direct {v1, p0}, Lnet/typeblog/socks/FloatingWindowService$6;-><init>(Lnet/typeblog/socks/FloatingWindowService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 285
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingView:Landroid/view/View;

    const v1, 0x7f090115

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWBacklastGroup:Landroid/widget/Switch;

    .line 286
    new-instance v1, Lnet/typeblog/socks/FloatingWindowService$7;

    invoke-direct {v1, p0}, Lnet/typeblog/socks/FloatingWindowService$7;-><init>(Lnet/typeblog/socks/FloatingWindowService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 297
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingView:Landroid/view/View;

    const v1, 0x7f090116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWSpamInvite:Landroid/widget/Switch;

    .line 298
    new-instance v1, Lnet/typeblog/socks/FloatingWindowService$8;

    invoke-direct {v1, p0}, Lnet/typeblog/socks/FloatingWindowService$8;-><init>(Lnet/typeblog/socks/FloatingWindowService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 311
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingView:Landroid/view/View;

    const v1, 0x7f090117

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWBotCommand:Landroid/widget/Switch;

    .line 312
    new-instance v1, Lnet/typeblog/socks/FloatingWindowService$9;

    invoke-direct {v1, p0}, Lnet/typeblog/socks/FloatingWindowService$9;-><init>(Lnet/typeblog/socks/FloatingWindowService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 325
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingView:Landroid/view/View;

    const v1, 0x7f090118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWMenaServer:Landroid/widget/Switch;

    .line 326
    new-instance v1, Lnet/typeblog/socks/FloatingWindowService$10;

    invoke-direct {v1, p0}, Lnet/typeblog/socks/FloatingWindowService$10;-><init>(Lnet/typeblog/socks/FloatingWindowService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 339
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingView:Landroid/view/View;

    const v1, 0x7f090119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWLVL:Landroid/widget/Switch;

    .line 340
    new-instance v1, Lnet/typeblog/socks/FloatingWindowService$11;

    invoke-direct {v1, p0}, Lnet/typeblog/socks/FloatingWindowService$11;-><init>(Lnet/typeblog/socks/FloatingWindowService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 353
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingView:Landroid/view/View;

    const v1, 0x7f090111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWLike:Landroid/widget/Switch;

    .line 354
    new-instance v1, Lnet/typeblog/socks/FloatingWindowService$12;

    invoke-direct {v1, p0}, Lnet/typeblog/socks/FloatingWindowService$12;-><init>(Lnet/typeblog/socks/FloatingWindowService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 371
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SW5mode:Landroid/widget/Switch;

    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSW5mode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 372
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWspamchat:Landroid/widget/Switch;

    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWspamchat:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 373
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWSpamAntikick:Landroid/widget/Switch;

    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWSpamAntikick:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 374
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWSPY:Landroid/widget/Switch;

    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWSPY:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 375
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWBacklastGroup:Landroid/widget/Switch;

    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWBacklastGroup:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 376
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWSpamInvite:Landroid/widget/Switch;

    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWSpamInvite:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 377
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWBotCommand:Landroid/widget/Switch;

    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWBotCommand:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 378
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWMenaServer:Landroid/widget/Switch;

    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWMenaServer:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 379
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWLVL:Landroid/widget/Switch;

    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWLVL:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 380
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->SWLike:Landroid/widget/Switch;

    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->BSWLike:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private showButton()V
    .registers 8

    .line 392
    iget-boolean v0, p0, Lnet/typeblog/socks/FloatingWindowService;->isButtonVisible:Z

    if-nez v0, :cond_85

    .line 393
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->windowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_12

    const-string v0, "window"

    .line 394
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/FloatingWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->windowManager:Landroid/view/WindowManager;

    .line 398
    :cond_12
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x7f6

    const/16 v5, 0x8

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->buttonLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 405
    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingView:Landroid/view/View;

    if-nez v1, :cond_2a

    const/16 v1, 0x33

    .line 406
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_3a

    .line 408
    :cond_2a
    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/lit8 v1, v1, 0x16

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 409
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->buttonLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 412
    :goto_3a
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c001d

    const/4 v2, 0x0

    .line 413
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->buttonView:Landroid/view/View;

    const v1, 0x7f090005

    .line 415
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 416
    new-instance v1, Lnet/typeblog/socks/FloatingWindowService$13;

    invoke-direct {v1, p0}, Lnet/typeblog/socks/FloatingWindowService$13;-><init>(Lnet/typeblog/socks/FloatingWindowService;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->buttonView:Landroid/view/View;

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 425
    new-instance v2, Lnet/typeblog/socks/FloatingWindowService$14;

    invoke-direct {v2, p0}, Lnet/typeblog/socks/FloatingWindowService$14;-><init>(Lnet/typeblog/socks/FloatingWindowService;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    new-instance v1, Lnet/typeblog/socks/FloatingWindowService$15;

    invoke-direct {v1, p0}, Lnet/typeblog/socks/FloatingWindowService$15;-><init>(Lnet/typeblog/socks/FloatingWindowService;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 473
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->buttonView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 475
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->buttonView:Landroid/view/View;

    iget-object v2, p0, Lnet/typeblog/socks/FloatingWindowService;->buttonLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 476
    iput-boolean v0, p0, Lnet/typeblog/socks/FloatingWindowService;->isButtonVisible:Z

    :cond_85
    return-void
.end method

.method private showFloatingWindow()V
    .registers 8

    .line 69
    iget-boolean v0, p0, Lnet/typeblog/socks/FloatingWindowService;->isFloatingWindowVisible:Z

    if-nez v0, :cond_82

    .line 70
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->windowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_12

    const-string v0, "window"

    .line 71
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/FloatingWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->windowManager:Landroid/view/WindowManager;

    .line 75
    :cond_12
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x7f6

    const/16 v5, 0x8

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 82
    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->buttonLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/lit8 v1, v1, -0x16

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 83
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->buttonLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 87
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c001f

    const/4 v2, 0x0

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingView:Landroid/view/View;

    const v1, 0x7f09006b

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 91
    new-instance v1, Lnet/typeblog/socks/FloatingWindowService$1;

    invoke-direct {v1, p0}, Lnet/typeblog/socks/FloatingWindowService$1;-><init>(Lnet/typeblog/socks/FloatingWindowService;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingView:Landroid/view/View;

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    new-instance v1, Lnet/typeblog/socks/FloatingWindowService$2;

    invoke-direct {v1, p0}, Lnet/typeblog/socks/FloatingWindowService$2;-><init>(Lnet/typeblog/socks/FloatingWindowService;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    new-instance v0, Lnet/typeblog/socks/FloatingWindowService$BackgroundTask;

    invoke-direct {v0, p0}, Lnet/typeblog/socks/FloatingWindowService$BackgroundTask;-><init>(Lnet/typeblog/socks/FloatingWindowService;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 129
    invoke-virtual {v0, v1}, Lnet/typeblog/socks/FloatingWindowService$BackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 131
    invoke-direct {p0}, Lnet/typeblog/socks/FloatingWindowService;->options()V

    .line 133
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingView:Landroid/view/View;

    iget-object v2, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lnet/typeblog/socks/FloatingWindowService;->isFloatingWindowVisible:Z

    :cond_82
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 1

    .line 51
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 52
    invoke-direct {p0}, Lnet/typeblog/socks/FloatingWindowService;->showButton()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 62
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 63
    invoke-direct {p0}, Lnet/typeblog/socks/FloatingWindowService;->hideFloatingWindow()V

    .line 64
    invoke-direct {p0}, Lnet/typeblog/socks/FloatingWindowService;->hideButton()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    const/4 p1, 0x1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 490
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_54

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    const/4 p1, 0x0

    return p1

    .line 498
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lnet/typeblog/socks/FloatingWindowService;->initialTouchX:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 499
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v2, p0, Lnet/typeblog/socks/FloatingWindowService;->initialTouchY:F

    sub-float/2addr p2, v2

    float-to-int p2, p2

    .line 500
    iget-object v2, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingView:Landroid/view/View;

    if-ne p1, v2, :cond_38

    .line 501
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lnet/typeblog/socks/FloatingWindowService;->initialX:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 502
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lnet/typeblog/socks/FloatingWindowService;->initialY:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 503
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService;->windowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingView:Landroid/view/View;

    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_53

    .line 504
    :cond_38
    iget-object v2, p0, Lnet/typeblog/socks/FloatingWindowService;->buttonView:Landroid/view/View;

    if-ne p1, v2, :cond_53

    .line 505
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService;->buttonLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lnet/typeblog/socks/FloatingWindowService;->initialX:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 506
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService;->buttonLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lnet/typeblog/socks/FloatingWindowService;->initialY:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 507
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService;->windowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lnet/typeblog/socks/FloatingWindowService;->buttonView:Landroid/view/View;

    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->buttonLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_53
    :goto_53
    return v1

    .line 492
    :cond_54
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingView:Landroid/view/View;

    if-ne p1, v0, :cond_5b

    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    goto :goto_5d

    :cond_5b
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->buttonLayoutParams:Landroid/view/WindowManager$LayoutParams;

    :goto_5d
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lnet/typeblog/socks/FloatingWindowService;->initialX:I

    .line 493
    iget-object v0, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingView:Landroid/view/View;

    if-ne p1, v0, :cond_68

    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService;->floatingWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    goto :goto_6a

    :cond_68
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService;->buttonLayoutParams:Landroid/view/WindowManager$LayoutParams;

    :goto_6a
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lnet/typeblog/socks/FloatingWindowService;->initialY:I

    .line 494
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lnet/typeblog/socks/FloatingWindowService;->initialTouchX:F

    .line 495
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lnet/typeblog/socks/FloatingWindowService;->initialTouchY:F

    return v1
.end method
