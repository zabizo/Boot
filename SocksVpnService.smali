.class public Lnet/typeblog/socks/SocksVpnService;
.super Landroid/net/VpnService;
.source "SocksVpnService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/typeblog/socks/SocksVpnService$VpnBinder;,
        Lnet/typeblog/socks/SocksVpnService$bothread;,
        Lnet/typeblog/socks/SocksVpnService$UDPthred;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mInterface:Landroid/os/ParcelFileDescriptor;

.field private mRunning:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "achrafantiban"

    .line 41
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "SocksVpnService"

    .line 45
    sput-object v0, Lnet/typeblog/socks/SocksVpnService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lnet/typeblog/socks/SocksVpnService;->mRunning:Z

    .line 49
    new-instance v0, Lnet/typeblog/socks/SocksVpnService$VpnBinder;

    invoke-direct {v0, p0}, Lnet/typeblog/socks/SocksVpnService$VpnBinder;-><init>(Lnet/typeblog/socks/SocksVpnService;)V

    iput-object v0, p0, Lnet/typeblog/socks/SocksVpnService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lnet/typeblog/socks/SocksVpnService;)Z
    .registers 1

    .line 26
    iget-boolean p0, p0, Lnet/typeblog/socks/SocksVpnService;->mRunning:Z

    return p0
.end method

.method static synthetic access$100(Lnet/typeblog/socks/SocksVpnService;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lnet/typeblog/socks/SocksVpnService;->stopMe()V

    return-void
.end method

.method private configure(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Z)V
    .registers 9

    .line 192
    new-instance p4, Landroid/net/VpnService$Builder;

    invoke-direct {p4, p0}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    const/16 v0, 0x5dc

    .line 193
    invoke-virtual {p4, v0}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    move-result-object v0

    .line 194
    invoke-virtual {v0, p1}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object p1

    const-string v0, "10.8.0.1"

    const/16 v1, 0x18

    .line 195
    invoke-virtual {p1, v0, v1}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    move-result-object p1

    const-string v0, "8.8.8.8"

    .line 196
    invoke-virtual {p1, v0}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object p1

    const-string v0, "0.0.0.0"

    const/4 v1, 0x0

    .line 197
    invoke-virtual {p1, v0, v1}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    if-eqz p6, :cond_32

    const/16 p1, 0x7e

    const-string p6, "fd00:1:1:1::1"

    .line 200
    invoke-virtual {p4, p6, p1}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    move-result-object p1

    const-string p6, "::"

    .line 201
    invoke-virtual {p1, p6, v1}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 204
    :cond_32
    invoke-static {p0, p4, p2}, Lnet/typeblog/socks/util/Routes;->addRoutes(Landroid/content/Context;Landroid/net/VpnService$Builder;Ljava/lang/String;)V

    if-eqz p3, :cond_4c

    .line 209
    :try_start_37
    array-length p1, p5

    :goto_38
    if-ge v1, p1, :cond_53

    aget-object p2, p5, v1

    .line 210
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_49

    .line 211
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/net/VpnService$Builder;->addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 215
    :cond_4c
    invoke-virtual {p0}, Lnet/typeblog/socks/SocksVpnService;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_53} :catch_53

    .line 221
    :catch_53
    :cond_53
    invoke-virtual {p4}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lnet/typeblog/socks/SocksVpnService;->mInterface:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method private start(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .registers 14

    .line 225
    invoke-static {p0, p6, p7}, Lnet/typeblog/socks/util/Utility;->makePdnsdConf(Landroid/content/Context;Ljava/lang/String;I)V

    .line 227
    sget-object p6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p7, 0x2

    new-array v0, p7, [Ljava/lang/Object;

    .line 228
    invoke-virtual {p0}, Lnet/typeblog/socks/SocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lnet/typeblog/socks/SocksVpnService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "%s/libpdnsd.so -c %s/pdnsd.conf"

    .line 227
    invoke-static {p6, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lnet/typeblog/socks/util/Utility;->exec(Ljava/lang/String;)I

    .line 230
    sget-object p6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 240
    invoke-virtual {p0}, Lnet/typeblog/socks/SocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    aput-object v1, v0, v2

    aput-object p2, v0, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v0, p3

    invoke-virtual {p0}, Lnet/typeblog/socks/SocksVpnService;->getFilesDir()Ljava/io/File;

    move-result-object p2

    const/4 p3, 0x4

    aput-object p2, v0, p3

    invoke-virtual {p0}, Lnet/typeblog/socks/SocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/4 p3, 0x5

    aput-object p2, v0, p3

    const-string p2, "%s/libtun2socks.so --netif-ipaddr 10.8.0.2 --netif-netmask 255.255.255.0 --socks-server-addr %s:%d --tunfd %d --tunmtu 1500 --loglevel 3 --pid %s/tun2socks.pid --sock %s/sock_path --dnsgw 10.8.0.1:8091"

    .line 230
    invoke-static {p6, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eqz p4, :cond_7d

    .line 243
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --username "

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 244
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --password "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_7d
    if-eqz p8, :cond_90

    .line 248
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --netif-ip6addr fd00:1:1:1::2"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_90
    if-eqz p9, :cond_a6

    .line 252
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --udpgw-remote-server-addr "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 259
    :cond_a6
    invoke-static {p2}, Lnet/typeblog/socks/util/Utility;->exec(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_b0

    .line 260
    invoke-direct {p0}, Lnet/typeblog/socks/SocksVpnService;->stopMe()V

    return-void

    :cond_b0
    :goto_b0
    if-ge v2, p3, :cond_e0

    .line 266
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/typeblog/socks/SocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    iget-object p4, p4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/sock_path"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/typeblog/socks/System;->sendfd(ILjava/lang/String;)I

    move-result p2

    const/4 p4, -0x1

    if-eq p2, p4, :cond_d3

    .line 267
    iput-boolean v3, p0, Lnet/typeblog/socks/SocksVpnService;->mRunning:Z

    return-void

    :cond_d3
    add-int/lit8 v2, v2, 0x1

    const-wide/16 p4, 0x3e8

    int-to-long p6, v2

    mul-long p6, p6, p4

    .line 273
    :try_start_da
    invoke-static {p6, p7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_dd} :catch_de

    goto :goto_b0

    :catch_de
    nop

    goto :goto_b0

    .line 279
    :cond_e0
    invoke-direct {p0}, Lnet/typeblog/socks/SocksVpnService;->stopMe()V

    return-void
.end method

.method private stopMe()V
    .registers 3

    const/4 v0, 0x1

    .line 175
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/SocksVpnService;->stopForeground(Z)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/typeblog/socks/SocksVpnService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/tun2socks.pid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/typeblog/socks/util/Utility;->killPidFile(Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/typeblog/socks/SocksVpnService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/pdnsd.pid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/typeblog/socks/util/Utility;->killPidFile(Ljava/lang/String;)V

    .line 181
    :try_start_34
    iget-object v0, p0, Lnet/typeblog/socks/SocksVpnService;->mInterface:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_3b

    .line 182
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_3b

    .line 188
    :catch_3b
    :cond_3b
    invoke-virtual {p0}, Lnet/typeblog/socks/SocksVpnService;->stopSelf()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onStartCommand$0$net-typeblog-socks-SocksVpnService()V
    .registers 1

    .line 121
    invoke-virtual {p0}, Lnet/typeblog/socks/SocksVpnService;->startcode()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 165
    iget-object p1, p0, Lnet/typeblog/socks/SocksVpnService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onDestroy()V
    .registers 1

    .line 170
    invoke-super {p0}, Landroid/net/VpnService;->onDestroy()V

    .line 171
    invoke-direct {p0}, Lnet/typeblog/socks/SocksVpnService;->stopMe()V

    return-void
.end method

.method public onRevoke()V
    .registers 1

    .line 131
    invoke-super {p0}, Landroid/net/VpnService;->onRevoke()V

    .line 132
    invoke-direct {p0}, Lnet/typeblog/socks/SocksVpnService;->stopMe()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 14

    const/4 p2, 0x1

    if-nez p1, :cond_4

    return p2

    .line 61
    :cond_4
    iget-boolean p1, p0, Lnet/typeblog/socks/SocksVpnService;->mRunning:Z

    if-eqz p1, :cond_9

    return p2

    :cond_9
    const-string p1, "com.dts.freefireth"

    const-string p3, "com.dts.freefiremax"

    .line 76
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object v5

    .line 82
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    const/4 v0, 0x0

    if-lt p1, p3, :cond_3d

    const-string p1, "net.typeblog.socks"

    .line 84
    new-instance p3, Landroid/app/NotificationChannel;

    const v1, 0x7f10002d

    .line 85
    invoke-virtual {p0, v1}, Lnet/typeblog/socks/SocksVpnService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, p1, v1, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 87
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lnet/typeblog/socks/SocksVpnService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 88
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, p3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 89
    new-instance p3, Landroid/app/Notification$Builder;

    invoke-direct {p3, p0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_42

    .line 91
    :cond_3d
    new-instance p3, Landroid/app/Notification$Builder;

    invoke-direct {p3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_42
    const/high16 p1, 0x8000000

    .line 96
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4c

    const/high16 p1, 0xc000000

    .line 100
    :cond_4c
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lnet/typeblog/socks/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0, v1, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v0, " VPN"

    .line 104
    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p3

    const-string v0, "Connected to Free Fire Server"

    .line 105
    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p3

    const/4 v0, -0x2

    .line 106
    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p3

    const v0, 0x7f08005e

    .line 107
    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 108
    invoke-virtual {p3, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 103
    invoke-virtual {p0, p2, p1}, Lnet/typeblog/socks/SocksVpnService;->startForeground(ILandroid/app/Notification;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v1, "VPN"

    const-string v2, "all"

    move-object v0, p0

    .line 112
    invoke-direct/range {v0 .. v6}, Lnet/typeblog/socks/SocksVpnService;->configure(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Z)V

    .line 117
    iget-object p1, p0, Lnet/typeblog/socks/SocksVpnService;->mInterface:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_a0

    .line 118
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    const/16 v3, 0xbb8

    const/16 v7, 0x35

    const/4 v8, 0x0

    const-string v2, "127.0.0.1"

    const-string v4, "username"

    const-string v5, "password"

    const-string v6, "8.8.8.8"

    const-string v9, "127.0.0.1:7200"

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lnet/typeblog/socks/SocksVpnService;->start(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    .line 121
    :cond_a0
    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Lnet/typeblog/socks/SocksVpnService$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lnet/typeblog/socks/SocksVpnService$$ExternalSyntheticLambda0;-><init>(Lnet/typeblog/socks/SocksVpnService;)V

    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 123
    new-instance p1, Lnet/typeblog/socks/SocksVpnService$bothread;

    invoke-direct {p1, p0}, Lnet/typeblog/socks/SocksVpnService$bothread;-><init>(Lnet/typeblog/socks/SocksVpnService;)V

    invoke-virtual {p1}, Lnet/typeblog/socks/SocksVpnService$bothread;->start()V

    .line 124
    new-instance p1, Lnet/typeblog/socks/SocksVpnService$UDPthred;

    invoke-direct {p1, p0}, Lnet/typeblog/socks/SocksVpnService$UDPthred;-><init>(Lnet/typeblog/socks/SocksVpnService;)V

    invoke-virtual {p1}, Lnet/typeblog/socks/SocksVpnService$UDPthred;->start()V

    return p2
.end method

.method public native startcode()V
.end method
