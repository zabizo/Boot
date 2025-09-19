.class public final synthetic Lnet/typeblog/socks/SocksVpnService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lnet/typeblog/socks/SocksVpnService;


# direct methods
.method public synthetic constructor <init>(Lnet/typeblog/socks/SocksVpnService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/typeblog/socks/SocksVpnService$$ExternalSyntheticLambda0;->f$0:Lnet/typeblog/socks/SocksVpnService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lnet/typeblog/socks/SocksVpnService$$ExternalSyntheticLambda0;->f$0:Lnet/typeblog/socks/SocksVpnService;

    invoke-virtual {v0}, Lnet/typeblog/socks/SocksVpnService;->lambda$onStartCommand$0$net-typeblog-socks-SocksVpnService()V

    return-void
.end method
