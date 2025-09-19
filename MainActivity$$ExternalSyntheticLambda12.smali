.class public final synthetic Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field public final synthetic f$0:Lnet/typeblog/socks/MainActivity;

.field public final synthetic f$1:Landroid/widget/VideoView;


# direct methods
.method public synthetic constructor <init>(Lnet/typeblog/socks/MainActivity;Landroid/widget/VideoView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda12;->f$0:Lnet/typeblog/socks/MainActivity;

    iput-object p2, p0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda12;->f$1:Landroid/widget/VideoView;

    return-void
.end method


# virtual methods
.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 6

    iget-object v0, p0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda12;->f$0:Lnet/typeblog/socks/MainActivity;

    iget-object v1, p0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda12;->f$1:Landroid/widget/VideoView;

    invoke-virtual {v0, v1, p1, p2, p3}, Lnet/typeblog/socks/MainActivity;->lambda$openProfileFragment$10$net-typeblog-socks-MainActivity(Landroid/widget/VideoView;Landroid/media/MediaPlayer;II)V

    return-void
.end method
