.class public final synthetic Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/VideoView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/VideoView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda10;->f$0:Landroid/widget/VideoView;

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 5

    iget-object v0, p0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda10;->f$0:Landroid/widget/VideoView;

    invoke-static {v0, p1, p2, p3}, Lnet/typeblog/socks/MainActivity;->lambda$openProfileFragment$11(Landroid/widget/VideoView;Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
