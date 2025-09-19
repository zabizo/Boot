.class Lnet/typeblog/socks/SocksVpnService$UDPthred;
.super Ljava/lang/Thread;
.source "SocksVpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/typeblog/socks/SocksVpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UDPthred"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/typeblog/socks/SocksVpnService;


# direct methods
.method constructor <init>(Lnet/typeblog/socks/SocksVpnService;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lnet/typeblog/socks/SocksVpnService$UDPthred;->this$0:Lnet/typeblog/socks/SocksVpnService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :goto_0
    const/4 v0, 0x0

    .line 151
    :try_start_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s/libghost.so --foxy-jeef-ghost 127.0.0.1:7200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lnet/typeblog/socks/SocksVpnService$UDPthred;->this$0:Lnet/typeblog/socks/SocksVpnService;

    .line 153
    invoke-virtual {v4}, Lnet/typeblog/socks/SocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 151
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {v1}, Lnet/typeblog/socks/util/Utility;->exec(Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    goto :goto_0

    :catch_1a
    move-exception v1

    .line 156
    iget-object v2, p0, Lnet/typeblog/socks/SocksVpnService$UDPthred;->this$0:Lnet/typeblog/socks/SocksVpnService;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
