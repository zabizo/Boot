.class Lnet/typeblog/socks/FloatingWindowService$14;
.super Ljava/lang/Object;
.source "FloatingWindowService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/typeblog/socks/FloatingWindowService;->showButton()V
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

    .line 425
    iput-object p1, p0, Lnet/typeblog/socks/FloatingWindowService$14;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 428
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService$14;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-static {p1}, Lnet/typeblog/socks/FloatingWindowService;->access$1600(Lnet/typeblog/socks/FloatingWindowService;)V

    .line 429
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService$14;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    const-string v0, "menu is disabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
