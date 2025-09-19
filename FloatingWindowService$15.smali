.class Lnet/typeblog/socks/FloatingWindowService$15;
.super Ljava/lang/Object;
.source "FloatingWindowService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/typeblog/socks/FloatingWindowService;->showButton()V
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

    .line 434
    iput-object p1, p0, Lnet/typeblog/socks/FloatingWindowService$15;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 442
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_77

    if-eq p1, v0, :cond_4c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_e

    const/4 p1, 0x0

    return p1

    .line 450
    :cond_e
    iget p1, p0, Lnet/typeblog/socks/FloatingWindowService$15;->offsetX:I

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lnet/typeblog/socks/FloatingWindowService$15;->lastTouchX:F

    sub-float/2addr v1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 451
    iget v1, p0, Lnet/typeblog/socks/FloatingWindowService$15;->offsetY:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v2, p0, Lnet/typeblog/socks/FloatingWindowService$15;->lastTouchY:F

    sub-float/2addr p2, v2

    add-float/2addr v1, p2

    float-to-int p2, v1

    .line 452
    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService$15;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-static {v1}, Lnet/typeblog/socks/FloatingWindowService;->access$1800(Lnet/typeblog/socks/FloatingWindowService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 453
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService$15;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-static {p1}, Lnet/typeblog/socks/FloatingWindowService;->access$1800(Lnet/typeblog/socks/FloatingWindowService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 454
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService$15;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-static {p1}, Lnet/typeblog/socks/FloatingWindowService;->access$400(Lnet/typeblog/socks/FloatingWindowService;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lnet/typeblog/socks/FloatingWindowService$15;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-static {p2}, Lnet/typeblog/socks/FloatingWindowService;->access$1900(Lnet/typeblog/socks/FloatingWindowService;)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lnet/typeblog/socks/FloatingWindowService$15;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-static {v1}, Lnet/typeblog/socks/FloatingWindowService;->access$1800(Lnet/typeblog/socks/FloatingWindowService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v0

    :cond_4c
    const/4 p1, 0x5

    .line 459
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lnet/typeblog/socks/FloatingWindowService$15;->lastTouchX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 460
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v2, p0, Lnet/typeblog/socks/FloatingWindowService$15;->lastTouchY:F

    sub-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    int-to-float p1, p1

    cmpg-float v1, v1, p1

    if-gez v1, :cond_76

    cmpg-float p1, p2, p1

    if-gez p1, :cond_76

    .line 463
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService$15;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-static {p1}, Lnet/typeblog/socks/FloatingWindowService;->access$1600(Lnet/typeblog/socks/FloatingWindowService;)V

    .line 464
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService$15;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-static {p1}, Lnet/typeblog/socks/FloatingWindowService;->access$1700(Lnet/typeblog/socks/FloatingWindowService;)V

    :cond_76
    return v0

    .line 444
    :cond_77
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService$15;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-static {p1}, Lnet/typeblog/socks/FloatingWindowService;->access$1800(Lnet/typeblog/socks/FloatingWindowService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lnet/typeblog/socks/FloatingWindowService$15;->offsetX:I

    .line 445
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService$15;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-static {p1}, Lnet/typeblog/socks/FloatingWindowService;->access$1800(Lnet/typeblog/socks/FloatingWindowService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lnet/typeblog/socks/FloatingWindowService$15;->offsetY:I

    .line 446
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lnet/typeblog/socks/FloatingWindowService$15;->lastTouchX:F

    .line 447
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lnet/typeblog/socks/FloatingWindowService$15;->lastTouchY:F

    return v0
.end method
