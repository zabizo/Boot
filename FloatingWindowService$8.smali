.class Lnet/typeblog/socks/FloatingWindowService$8;
.super Ljava/lang/Object;
.source "FloatingWindowService.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/typeblog/socks/FloatingWindowService;->options()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/typeblog/socks/FloatingWindowService;


# direct methods
.method constructor <init>(Lnet/typeblog/socks/FloatingWindowService;)V
    .registers 2

    .line 298
    iput-object p1, p0, Lnet/typeblog/socks/FloatingWindowService$8;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    .line 301
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService$8;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/typeblog/socks/FloatingWindowService;->access$1102(Lnet/typeblog/socks/FloatingWindowService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    if-eqz p2, :cond_1a

    .line 303
    new-instance p1, Lnet/typeblog/socks/util/SendCommandTask;

    invoke-direct {p1}, Lnet/typeblog/socks/util/SendCommandTask;-><init>()V

    const-string p2, "/des"

    .line 304
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/typeblog/socks/util/SendCommandTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_28

    .line 306
    :cond_1a
    new-instance p1, Lnet/typeblog/socks/util/SendCommandTask;

    invoke-direct {p1}, Lnet/typeblog/socks/util/SendCommandTask;-><init>()V

    const-string p2, "/-des"

    .line 307
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/typeblog/socks/util/SendCommandTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_28
    return-void
.end method
