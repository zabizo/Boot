.class Lnet/typeblog/socks/IVpnService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVpnService.java"

# interfaces
.implements Lnet/typeblog/socks/IVpnService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/typeblog/socks/IVpnService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lnet/typeblog/socks/IVpnService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lnet/typeblog/socks/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 90
    iget-object v0, p0, Lnet/typeblog/socks/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "net.typeblog.socks.IVpnService"

    return-object v0
.end method

.method public isRunning()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "net.typeblog.socks.IVpnService"

    .line 102
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lnet/typeblog/socks/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 104
    invoke-static {}, Lnet/typeblog/socks/IVpnService$Stub;->getDefaultImpl()Lnet/typeblog/socks/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 105
    invoke-static {}, Lnet/typeblog/socks/IVpnService$Stub;->getDefaultImpl()Lnet/typeblog/socks/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lnet/typeblog/socks/IVpnService;->isRunning()Z

    move-result v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3d

    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    .line 107
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 108
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3d

    if-eqz v2, :cond_36

    const/4 v3, 0x1

    .line 111
    :cond_36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_3d
    move-exception v2

    .line 111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 113
    throw v2
.end method

.method public stop()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "net.typeblog.socks.IVpnService"

    .line 121
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lnet/typeblog/socks/IVpnService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 123
    invoke-static {}, Lnet/typeblog/socks/IVpnService$Stub;->getDefaultImpl()Lnet/typeblog/socks/IVpnService;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 124
    invoke-static {}, Lnet/typeblog/socks/IVpnService$Stub;->getDefaultImpl()Lnet/typeblog/socks/IVpnService;

    move-result-object v2

    invoke-interface {v2}, Lnet/typeblog/socks/IVpnService;->stop()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_35

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 127
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_35

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_35
    move-exception v2

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 132
    throw v2
.end method
