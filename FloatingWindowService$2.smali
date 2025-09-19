.class Lnet/typeblog/socks/FloatingWindowService$2;
.super Ljava/lang/Object;
.source "FloatingWindowService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/typeblog/socks/FloatingWindowService;->showFloatingWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastTouchX:F

.field private lastTouchY:F

.field private offsetX:I

.field private offsetY:I

.field final synthetic this$0:Lnet/typeblog/socks/FloatingWindowService;


# direct methods
.method constructor <init>(Lnet/typeblog/socks/FloatingWindowService;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lnet/typeblog/socks/FloatingWindowService$2;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 109
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_c

    const/4 p1, 0x0

    return p1

    .line 117
    :cond_c
    iget p1, p0, Lnet/typeblog/socks/FloatingWindowService$2;->offsetX:I

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lnet/typeblog/socks/FloatingWindowService$2;->lastTouchX:F

    sub-float/2addr v1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 118
    iget v1, p0, Lnet/typeblog/socks/FloatingWindowService$2;->offsetY:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v2, p0, Lnet/typeblog/socks/FloatingWindowService$2;->lastTouchY:F

    sub-float/2addr p2, v2

    add-float/2addr v1, p2

    float-to-int p2, v1

    .line 119
    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService$2;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-static {v1}, Lnet/typeblog/socks/FloatingWindowService;->access$200(Lnet/typeblog/socks/FloatingWindowService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 120
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService$2;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-static {p1}, Lnet/typeblog/socks/FloatingWindowService;->access$200(Lnet/typeblog/socks/FloatingWindowService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 121
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService$2;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-static {p1}, Lnet/typeblog/socks/FloatingWindowService;->access$400(Lnet/typeblog/socks/FloatingWindowService;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lnet/typeblog/socks/FloatingWindowService$2;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-static {p2}, Lnet/typeblog/socks/FloatingWindowService;->access$300(Lnet/typeblog/socks/FloatingWindowService;)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService$2;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-static {v1}, Lnet/typeblog/socks/FloatingWindowService;->access$200(Lnet/typeblog/socks/FloatingWindowService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v0

    .line 111
    :cond_4a
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService$2;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-static {p1}, Lnet/typeblog/socks/FloatingWindowService;->access$200(Lnet/typeblog/socks/FloatingWindowService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lnet/typeblog/socks/FloatingWindowService$2;->offsetX:I

    .line 112
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService$2;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-static {p1}, Lnet/typeblog/socks/FloatingWindowService;->access$200(Lnet/typeblog/socks/FloatingWindowService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lnet/typeblog/socks/FloatingWindowService$2;->offsetY:I

    .line 113
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lnet/typeblog/socks/FloatingWindowService$2;->lastTouchX:F

    .line 114
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lnet/typeblog/socks/FloatingWindowService$2;->lastTouchY:F

    return v0
.end method
