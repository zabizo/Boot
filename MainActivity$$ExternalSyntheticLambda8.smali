.class public final synthetic Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lnet/typeblog/socks/MainActivity;

.field public final synthetic f$1:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lnet/typeblog/socks/MainActivity;Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda8;->f$0:Lnet/typeblog/socks/MainActivity;

    iput-object p2, p0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda8;->f$1:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda8;->f$0:Lnet/typeblog/socks/MainActivity;

    iget-object v1, p0, Lnet/typeblog/socks/MainActivity$$ExternalSyntheticLambda8;->f$1:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p1, p2}, Lnet/typeblog/socks/MainActivity;->lambda$showUpdateDialog$13$net-typeblog-socks-MainActivity(Lorg/json/JSONObject;Landroid/content/DialogInterface;I)V

    return-void
.end method
