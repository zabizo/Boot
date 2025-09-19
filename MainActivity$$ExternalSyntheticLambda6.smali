.class public final synthetic Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lnet/typeblog/socks/MainActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lnet/typeblog/socks/MainActivity;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda6;->f$0:Lnet/typeblog/socks/MainActivity;

    iput-object p2, p0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda6;->f$0:Lnet/typeblog/socks/MainActivity;

    iget-object v1, p0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/typeblog/socks/MainActivity;->lambda$showError$16$net-typeblog-socks-MainActivity(Ljava/lang/String;)V

    return-void
.end method
