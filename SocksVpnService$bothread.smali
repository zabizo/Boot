.class Lnet/typeblog/socks/SocksVpnService$bothread;
.super Ljava/lang/Thread;
.source "SocksVpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/typeblog/socks/SocksVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "bothread"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/typeblog/socks/SocksVpnService;


# direct methods
.method constructor <init>(Lnet/typeblog/socks/SocksVpnService;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lnet/typeblog/socks/SocksVpnService$bothread;->this$0:Lnet/typeblog/socks/SocksVpnService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    :goto_0
    nop

    goto :goto_0
.end method
