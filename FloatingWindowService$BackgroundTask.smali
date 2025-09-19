.class public Lnet/typeblog/socks/FloatingWindowService$BackgroundTask;
.super Landroid/os/AsyncTask;
.source "FloatingWindowService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/typeblog/socks/FloatingWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackgroundTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/typeblog/socks/FloatingWindowService;


# direct methods
.method public constructor <init>(Lnet/typeblog/socks/FloatingWindowService;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lnet/typeblog/socks/FloatingWindowService$BackgroundTask;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 139
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/typeblog/socks/FloatingWindowService$BackgroundTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 2

    .line 143
    iget-object p1, p0, Lnet/typeblog/socks/FloatingWindowService$BackgroundTask;->this$0:Lnet/typeblog/socks/FloatingWindowService;

    invoke-static {p1}, Lnet/typeblog/socks/FloatingWindowService;->access$500(Lnet/typeblog/socks/FloatingWindowService;)V

    const/4 p1, 0x0

    return-object p1
.end method
