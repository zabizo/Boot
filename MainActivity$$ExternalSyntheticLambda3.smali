.class public final synthetic Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lnet/typeblog/socks/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lnet/typeblog/socks/MainActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda3;->f$0:Lnet/typeblog/socks/MainActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda3;->f$0:Lnet/typeblog/socks/MainActivity;

    invoke-virtual {v0}, Lnet/typeblog/socks/MainActivity;->lambda$loadConfig$2$net-typeblog-socks-MainActivity()V

    return-void
.end method
