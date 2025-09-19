.class Lnet/typeblog/socks/FloatingWindowService$1;
.super Ljava/lang/Object;
.source "FloatingWindowService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/typeblog/socks/FloatingWindowService;->showFloatingWindow()V
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

    .line 91
    iput-object p1, p0, Lnet/typeblog/socks/FloatingWindowService$1;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 94
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService$1;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-static {p1}, Lnet/typeblog/socks/FloatingWindowService;->access$000(Lnet/typeblog/socks/FloatingWindowService;)V

    .line 95
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService$1;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-static {p1}, Lnet/typeblog/socks/FloatingWindowService;->access$100(Lnet/typeblog/socks/FloatingWindowService;)V

    return-void
.end method
