.class public final synthetic Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field public static final synthetic INSTANCE:Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda9;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda9;-><init>()V

    sput-object v0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda9;->INSTANCE:Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda9;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-static {p1, p2, p3}, Lnet/typeblog/socks/MainActivity;->lambda$showUpdateDialog$15(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
