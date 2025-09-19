.class public Lnet/typeblog/socks/ProfileFragment;
.super Landroid/preference/PreferenceFragment;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final PERMISSION_REQUEST_CODE:I = 0x3e9


# instance fields
.field private intentFloatingWindowService:Landroid/content/Intent;

.field private mBinder:Lnet/typeblog/socks/IVpnService;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mManager:Lnet/typeblog/socks/util/ProfileManager;

.field private mPrefAppBypass:Landroid/preference/CheckBoxPreference;

.field private mPrefAppList:Landroid/preference/EditTextPreference;

.field private mPrefAuto:Landroid/preference/CheckBoxPreference;

.field private mPrefDns:Landroid/preference/EditTextPreference;

.field private mPrefDnsPort:Landroid/preference/EditTextPreference;

.field private mPrefIPv6:Landroid/preference/CheckBoxPreference;

.field private mPrefPassword:Landroid/preference/EditTextPreference;

.field private mPrefPerApp:Landroid/preference/CheckBoxPreference;

.field private mPrefPort:Landroid/preference/EditTextPreference;

.field private mPrefProfile:Landroid/preference/ListPreference;

.field private mPrefRoutes:Landroid/preference/ListPreference;

.field private mPrefServer:Landroid/preference/EditTextPreference;

.field private mPrefUDP:Landroid/preference/CheckBoxPreference;

.field private mPrefUDPGW:Landroid/preference/EditTextPreference;

.field private mPrefUsername:Landroid/preference/EditTextPreference;

.field private mPrefUserpw:Landroid/preference/CheckBoxPreference;

.field private mProfile:Lnet/typeblog/socks/util/Profile;

.field private mRunning:Z

.field private mStarting:Z

.field private final mStateRunnable:Ljava/lang/Runnable;

.field private mStopping:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lnet/typeblog/socks/ProfileFragment;->mRunning:Z

    .line 58
    iput-boolean v0, p0, Lnet/typeblog/socks/ProfileFragment;->mStarting:Z

    iput-boolean v0, p0, Lnet/typeblog/socks/ProfileFragment;->mStopping:Z

    .line 64
    new-instance v0, Lnet/typeblog/socks/ProfileFragment$1;

    invoke-direct {v0, p0}, Lnet/typeblog/socks/ProfileFragment$1;-><init>(Lnet/typeblog/socks/ProfileFragment;)V

    iput-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mConnection:Landroid/content/ServiceConnection;

    .line 85
    new-instance v0, Lnet/typeblog/socks/ProfileFragment$2;

    invoke-direct {v0, p0}, Lnet/typeblog/socks/ProfileFragment$2;-><init>(Lnet/typeblog/socks/ProfileFragment;)V

    iput-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mStateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lnet/typeblog/socks/ProfileFragment;)Lnet/typeblog/socks/IVpnService;
    .registers 1

    .line 51
    iget-object p0, p0, Lnet/typeblog/socks/ProfileFragment;->mBinder:Lnet/typeblog/socks/IVpnService;

    return-object p0
.end method

.method static synthetic access$002(Lnet/typeblog/socks/ProfileFragment;Lnet/typeblog/socks/IVpnService;)Lnet/typeblog/socks/IVpnService;
    .registers 2

    .line 51
    iput-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mBinder:Lnet/typeblog/socks/IVpnService;

    return-object p1
.end method

.method static synthetic access$100(Lnet/typeblog/socks/ProfileFragment;)Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lnet/typeblog/socks/ProfileFragment;->mRunning:Z

    return p0
.end method

.method static synthetic access$102(Lnet/typeblog/socks/ProfileFragment;Z)Z
    .registers 2

    .line 51
    iput-boolean p1, p0, Lnet/typeblog/socks/ProfileFragment;->mRunning:Z

    return p1
.end method

.method static synthetic access$200(Lnet/typeblog/socks/ProfileFragment;)V
    .registers 1

    .line 51
    invoke-direct {p0}, Lnet/typeblog/socks/ProfileFragment;->updateState()V

    return-void
.end method

.method static synthetic access$300(Lnet/typeblog/socks/ProfileFragment;)Landroid/widget/Switch;
    .registers 1

    .line 51
    iget-object p0, p0, Lnet/typeblog/socks/ProfileFragment;->mSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method private checkOverlayDisplayPermission()Z
    .registers 4

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-le v0, v2, :cond_13

    .line 121
    invoke-virtual {p0}, Lnet/typeblog/socks/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    return v0

    :cond_13
    return v1
.end method

.method private checkState()V
    .registers 6

    const/4 v0, 0x0

    .line 386
    iput-boolean v0, p0, Lnet/typeblog/socks/ProfileFragment;->mRunning:Z

    .line 387
    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 388
    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 390
    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mBinder:Lnet/typeblog/socks/IVpnService;

    if-nez v1, :cond_26

    .line 391
    invoke-virtual {p0}, Lnet/typeblog/socks/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lnet/typeblog/socks/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lnet/typeblog/socks/SocksVpnService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lnet/typeblog/socks/ProfileFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_26
    return-void
.end method

.method private initPreferences()V
    .registers 2

    const-string v0, "profile"

    .line 270
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/ProfileFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefProfile:Landroid/preference/ListPreference;

    const-string v0, "server_ip"

    .line 271
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/ProfileFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefServer:Landroid/preference/EditTextPreference;

    const-string v0, "server_port"

    .line 272
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/ProfileFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefPort:Landroid/preference/EditTextPreference;

    const-string v0, "auth_userpw"

    .line 273
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/ProfileFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefUserpw:Landroid/preference/CheckBoxPreference;

    const-string v0, "auth_username"

    .line 274
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/ProfileFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefUsername:Landroid/preference/EditTextPreference;

    const-string v0, "auth_password"

    .line 275
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/ProfileFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefPassword:Landroid/preference/EditTextPreference;

    const-string v0, "adv_route"

    .line 276
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/ProfileFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefRoutes:Landroid/preference/ListPreference;

    const-string v0, "adv_dns"

    .line 277
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/ProfileFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefDns:Landroid/preference/EditTextPreference;

    const-string v0, "adv_dns_port"

    .line 278
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/ProfileFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefDnsPort:Landroid/preference/EditTextPreference;

    const-string v0, "adv_per_app"

    .line 279
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/ProfileFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefPerApp:Landroid/preference/CheckBoxPreference;

    const-string v0, "adv_app_bypass"

    .line 280
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/ProfileFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefAppBypass:Landroid/preference/CheckBoxPreference;

    const-string v0, "adv_app_list"

    .line 281
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/ProfileFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefAppList:Landroid/preference/EditTextPreference;

    const-string v0, "ipv6_proxy"

    .line 282
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/ProfileFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefIPv6:Landroid/preference/CheckBoxPreference;

    const-string v0, "udp_proxy"

    .line 283
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/ProfileFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefUDP:Landroid/preference/CheckBoxPreference;

    const-string v0, "udp_gw"

    .line 284
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/ProfileFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefUDPGW:Landroid/preference/EditTextPreference;

    const-string v0, "adv_auto_connect"

    .line 285
    invoke-virtual {p0, v0}, Lnet/typeblog/socks/ProfileFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefAuto:Landroid/preference/CheckBoxPreference;

    .line 286
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefProfile:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 287
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 288
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 289
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefUserpw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 290
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefUsername:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 291
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 292
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefRoutes:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 293
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefDns:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 294
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefDnsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 295
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefPerApp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 296
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefAppBypass:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 297
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefAppList:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 298
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefIPv6:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 299
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefUDP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 300
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefUDPGW:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 301
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefAuto:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method static synthetic lambda$removeProfile$1(Landroid/content/DialogInterface;I)V
    .registers 2

    return-void
.end method

.method private reload()V
    .registers 6

    .line 304
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    if-nez v0, :cond_c

    .line 305
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mManager:Lnet/typeblog/socks/util/ProfileManager;

    invoke-virtual {v0}, Lnet/typeblog/socks/util/ProfileManager;->getDefault()Lnet/typeblog/socks/util/Profile;

    move-result-object v0

    iput-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    .line 307
    :cond_c
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefProfile:Landroid/preference/ListPreference;

    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mManager:Lnet/typeblog/socks/util/ProfileManager;

    invoke-virtual {v1}, Lnet/typeblog/socks/util/ProfileManager;->getProfiles()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefProfile:Landroid/preference/ListPreference;

    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mManager:Lnet/typeblog/socks/util/ProfileManager;

    invoke-virtual {v1}, Lnet/typeblog/socks/util/ProfileManager;->getProfiles()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefProfile:Landroid/preference/ListPreference;

    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {v1}, Lnet/typeblog/socks/util/Profile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefRoutes:Landroid/preference/ListPreference;

    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {v1}, Lnet/typeblog/socks/util/Profile;->getRoute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/preference/ListPreference;

    .line 311
    iget-object v2, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefProfile:Landroid/preference/ListPreference;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefRoutes:Landroid/preference/ListPreference;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-direct {p0, v1}, Lnet/typeblog/socks/ProfileFragment;->resetList([Landroid/preference/ListPreference;)V

    .line 313
    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefUserpw:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {v2}, Lnet/typeblog/socks/util/Profile;->isUserPw()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 314
    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefPerApp:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {v2}, Lnet/typeblog/socks/util/Profile;->isPerApp()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 315
    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefAppBypass:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {v2}, Lnet/typeblog/socks/util/Profile;->isBypassApp()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 316
    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefIPv6:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {v2}, Lnet/typeblog/socks/util/Profile;->hasIPv6()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 317
    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefUDP:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {v2}, Lnet/typeblog/socks/util/Profile;->hasUDP()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 318
    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefAuto:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {v2}, Lnet/typeblog/socks/util/Profile;->autoConnect()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 320
    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefServer:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {v2}, Lnet/typeblog/socks/util/Profile;->getServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefPort:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {v2}, Lnet/typeblog/socks/util/Profile;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefUsername:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {v2}, Lnet/typeblog/socks/util/Profile;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefPassword:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {v2}, Lnet/typeblog/socks/util/Profile;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefDns:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {v2}, Lnet/typeblog/socks/util/Profile;->getDns()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefDnsPort:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {v2}, Lnet/typeblog/socks/util/Profile;->getDnsPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefUDPGW:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {v2}, Lnet/typeblog/socks/util/Profile;->getUDPGW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    const/4 v1, 0x7

    new-array v1, v1, [Landroid/preference/EditTextPreference;

    .line 327
    iget-object v2, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefServer:Landroid/preference/EditTextPreference;

    aput-object v2, v1, v3

    iget-object v2, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefPort:Landroid/preference/EditTextPreference;

    aput-object v2, v1, v4

    iget-object v2, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefUsername:Landroid/preference/EditTextPreference;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefPassword:Landroid/preference/EditTextPreference;

    aput-object v2, v1, v0

    const/4 v0, 0x4

    iget-object v2, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefDns:Landroid/preference/EditTextPreference;

    aput-object v2, v1, v0

    const/4 v0, 0x5

    iget-object v2, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefDnsPort:Landroid/preference/EditTextPreference;

    aput-object v2, v1, v0

    const/4 v0, 0x6

    iget-object v2, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefUDPGW:Landroid/preference/EditTextPreference;

    aput-object v2, v1, v0

    invoke-direct {p0, v1}, Lnet/typeblog/socks/ProfileFragment;->resetText([Landroid/preference/EditTextPreference;)V

    .line 328
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefAppList:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {v1}, Lnet/typeblog/socks/util/Profile;->getAppList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private removeProfile()V
    .registers 6

    .line 367
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnet/typeblog/socks/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100038

    .line 368
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100039

    .line 369
    invoke-virtual {p0, v1}, Lnet/typeblog/socks/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {v3}, Lnet/typeblog/socks/util/Profile;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lnet/typeblog/socks/ProfileFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lnet/typeblog/socks/ProfileFragment$$ExternalSyntheticLambda0;-><init>(Lnet/typeblog/socks/ProfileFragment;)V

    const v2, 0x104000a

    .line 370
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lnet/typeblog/socks/ProfileFragment$$ExternalSyntheticLambda1;->INSTANCE:Lnet/typeblog/socks/ProfileFragment$$ExternalSyntheticLambda1;

    const/high16 v2, 0x1040000

    .line 380
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private varargs resetList([Landroid/preference/ListPreference;)V
    .registers 6

    .line 331
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    .line 332
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return-void
.end method

.method private resetListN(Landroid/preference/ListPreference;Ljava/lang/Object;)V
    .registers 3

    .line 335
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private varargs resetText([Landroid/preference/EditTextPreference;)V
    .registers 11

    .line 338
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_61

    aget-object v3, p1, v2

    .line 339
    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getInputType()I

    move-result v4

    const/16 v5, 0x80

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_1c

    .line 340
    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5e

    .line 342
    :cond_1c
    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_59

    .line 343
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    .line 344
    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const-string v8, "%%0%dd"

    invoke-static {v5, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    .line 343
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    const-string v6, "*"

    .line 345
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 343
    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5e

    :cond_59
    const-string v4, ""

    .line 347
    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_61
    return-void
.end method

.method private resetTextN(Landroid/preference/EditTextPreference;Ljava/lang/Object;)V
    .registers 8

    .line 352
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_15

    .line 353
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_54

    .line 355
    :cond_15
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 356
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4f

    .line 357
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 358
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const-string p2, "%%0%dd"

    invoke-static {v1, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 357
    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "0"

    const-string v1, "*"

    .line 359
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 357
    invoke-virtual {p1, p2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_54

    :cond_4f
    const-string p2, ""

    .line 361
    invoke-virtual {p1, p2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_54
    return-void
.end method

.method private startFloatingWindowService()V
    .registers 4

    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lnet/typeblog/socks/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lnet/typeblog/socks/FloatingWindowService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->intentFloatingWindowService:Landroid/content/Intent;

    .line 143
    invoke-virtual {p0}, Lnet/typeblog/socks/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->intentFloatingWindowService:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private startVpn()V
    .registers 4

    const/4 v0, 0x1

    .line 423
    iput-boolean v0, p0, Lnet/typeblog/socks/ProfileFragment;->mStarting:Z

    .line 424
    invoke-virtual {p0}, Lnet/typeblog/socks/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 427
    invoke-virtual {p0, v0, v1}, Lnet/typeblog/socks/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_17

    :cond_12
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 430
    invoke-virtual {p0, v1, v0, v2}, Lnet/typeblog/socks/ProfileFragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_17
    return-void
.end method

.method private stopFloatingWindowService()V
    .registers 4

    .line 147
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->intentFloatingWindowService:Landroid/content/Intent;

    if-nez v0, :cond_e

    .line 148
    invoke-virtual {p0}, Lnet/typeblog/socks/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->intentFloatingWindowService:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_24

    .line 150
    :cond_e
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lnet/typeblog/socks/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lnet/typeblog/socks/FloatingWindowService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->intentFloatingWindowService:Landroid/content/Intent;

    .line 151
    invoke-virtual {p0}, Lnet/typeblog/socks/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->intentFloatingWindowService:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_24
    return-void
.end method

.method private stopVpn()V
    .registers 3

    .line 435
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mBinder:Lnet/typeblog/socks/IVpnService;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    .line 438
    iput-boolean v1, p0, Lnet/typeblog/socks/ProfileFragment;->mStopping:Z

    .line 441
    :try_start_8
    invoke-interface {v0}, Lnet/typeblog/socks/IVpnService;->stop()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    .line 443
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_10
    const/4 v0, 0x0

    .line 445
    iput-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mBinder:Lnet/typeblog/socks/IVpnService;

    .line 447
    invoke-virtual {p0}, Lnet/typeblog/socks/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 448
    invoke-direct {p0}, Lnet/typeblog/socks/ProfileFragment;->checkState()V

    return-void
.end method

.method private updateState()V
    .registers 4

    .line 396
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mBinder:Lnet/typeblog/socks/IVpnService;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 397
    iput-boolean v1, p0, Lnet/typeblog/socks/ProfileFragment;->mRunning:Z

    goto :goto_11

    .line 400
    :cond_8
    :try_start_8
    invoke-interface {v0}, Lnet/typeblog/socks/IVpnService;->isRunning()Z

    move-result v0

    iput-boolean v0, p0, Lnet/typeblog/socks/ProfileFragment;->mRunning:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    goto :goto_11

    .line 402
    :catch_f
    iput-boolean v1, p0, Lnet/typeblog/socks/ProfileFragment;->mRunning:Z

    .line 406
    :goto_11
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mSwitch:Landroid/widget/Switch;

    iget-boolean v2, p0, Lnet/typeblog/socks/ProfileFragment;->mRunning:Z

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 408
    iget-boolean v0, p0, Lnet/typeblog/socks/ProfileFragment;->mStarting:Z

    if-nez v0, :cond_20

    iget-boolean v2, p0, Lnet/typeblog/socks/ProfileFragment;->mStopping:Z

    if-eqz v2, :cond_2e

    :cond_20
    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lnet/typeblog/socks/ProfileFragment;->mRunning:Z

    if-nez v0, :cond_2e

    :cond_26
    iget-boolean v0, p0, Lnet/typeblog/socks/ProfileFragment;->mStopping:Z

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lnet/typeblog/socks/ProfileFragment;->mRunning:Z

    if-nez v0, :cond_34

    .line 409
    :cond_2e
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 412
    :cond_34
    iget-boolean v0, p0, Lnet/typeblog/socks/ProfileFragment;->mStarting:Z

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Lnet/typeblog/socks/ProfileFragment;->mRunning:Z

    if-eqz v0, :cond_3e

    .line 413
    iput-boolean v1, p0, Lnet/typeblog/socks/ProfileFragment;->mStarting:Z

    .line 416
    :cond_3e
    iget-boolean v0, p0, Lnet/typeblog/socks/ProfileFragment;->mStopping:Z

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lnet/typeblog/socks/ProfileFragment;->mRunning:Z

    if-nez v0, :cond_48

    .line 417
    iput-boolean v1, p0, Lnet/typeblog/socks/ProfileFragment;->mStopping:Z

    .line 419
    :cond_48
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$removeProfile$0$net-typeblog-socks-ProfileFragment(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 371
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mManager:Lnet/typeblog/socks/util/ProfileManager;

    iget-object p2, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {p2}, Lnet/typeblog/socks/util/Profile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/typeblog/socks/util/ProfileManager;->removeProfile(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2d

    .line 372
    invoke-virtual {p0}, Lnet/typeblog/socks/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f100030

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    .line 373
    invoke-virtual {v1}, Lnet/typeblog/socks/util/Profile;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lnet/typeblog/socks/ProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 372
    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 374
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_38

    .line 376
    :cond_2d
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mManager:Lnet/typeblog/socks/util/ProfileManager;

    invoke-virtual {p1}, Lnet/typeblog/socks/util/ProfileManager;->getDefault()Lnet/typeblog/socks/util/Profile;

    move-result-object p1

    iput-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    .line 377
    invoke-direct {p0}, Lnet/typeblog/socks/ProfileFragment;->reload()V

    :goto_38
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 262
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_12

    .line 265
    invoke-virtual {p0}, Lnet/typeblog/socks/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-static {p1, p2}, Lnet/typeblog/socks/util/Utility;->startVpn(Landroid/content/Context;Lnet/typeblog/socks/util/Profile;)V

    .line 266
    invoke-direct {p0}, Lnet/typeblog/socks/ProfileFragment;->checkState()V

    :cond_12
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    if-eqz p2, :cond_9

    .line 251
    invoke-direct {p0}, Lnet/typeblog/socks/ProfileFragment;->startVpn()V

    .line 252
    invoke-direct {p0}, Lnet/typeblog/socks/ProfileFragment;->startFloatingWindowService()V

    goto :goto_f

    .line 255
    :cond_9
    invoke-direct {p0}, Lnet/typeblog/socks/ProfileFragment;->stopVpn()V

    .line 256
    invoke-direct {p0}, Lnet/typeblog/socks/ProfileFragment;->stopFloatingWindowService()V

    :goto_f
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 101
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130003

    .line 103
    invoke-virtual {p0, p1}, Lnet/typeblog/socks/ProfileFragment;->addPreferencesFromResource(I)V

    const/4 p1, 0x1

    .line 104
    invoke-virtual {p0, p1}, Lnet/typeblog/socks/ProfileFragment;->setHasOptionsMenu(Z)V

    .line 105
    new-instance p1, Lnet/typeblog/socks/util/ProfileManager;

    invoke-virtual {p0}, Lnet/typeblog/socks/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/typeblog/socks/util/ProfileManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mManager:Lnet/typeblog/socks/util/ProfileManager;

    .line 107
    invoke-direct {p0}, Lnet/typeblog/socks/ProfileFragment;->checkOverlayDisplayPermission()Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_34

    .line 110
    :cond_23
    new-instance p1, Landroid/content/Intent;

    const-string v0, "package:com.achraf.antiban"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v0, -0x1

    .line 111
    invoke-virtual {p0, p1, v0}, Lnet/typeblog/socks/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_34
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5

    .line 132
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d0002

    .line 133
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f09011b

    .line 134
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09011a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mSwitch:Landroid/widget/Switch;

    .line 136
    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 137
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mSwitch:Landroid/widget/Switch;

    iget-object p2, p0, Lnet/typeblog/socks/ProfileFragment;->mStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/Switch;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    invoke-direct {p0}, Lnet/typeblog/socks/ProfileFragment;->checkState()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .line 160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f09000d

    if-ne v0, v2, :cond_b

    return v1

    :cond_b
    const v2, 0x7f0900d8

    if-ne v0, v2, :cond_14

    .line 165
    invoke-direct {p0}, Lnet/typeblog/socks/ProfileFragment;->removeProfile()V

    return v1

    .line 168
    :cond_14
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    .line 179
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefProfile:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1a

    .line 180
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 181
    iget-object p2, p0, Lnet/typeblog/socks/ProfileFragment;->mManager:Lnet/typeblog/socks/util/ProfileManager;

    invoke-virtual {p2, p1}, Lnet/typeblog/socks/util/ProfileManager;->getProfile(Ljava/lang/String;)Lnet/typeblog/socks/util/Profile;

    move-result-object p2

    iput-object p2, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    .line 182
    iget-object p2, p0, Lnet/typeblog/socks/ProfileFragment;->mManager:Lnet/typeblog/socks/util/ProfileManager;

    invoke-virtual {p2, p1}, Lnet/typeblog/socks/util/ProfileManager;->switchDefault(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lnet/typeblog/socks/ProfileFragment;->reload()V

    return v1

    .line 185
    :cond_1a
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefServer:Landroid/preference/EditTextPreference;

    if-ne p1, v0, :cond_2d

    .line 186
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/typeblog/socks/util/Profile;->setServer(Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefServer:Landroid/preference/EditTextPreference;

    invoke-direct {p0, p1, p2}, Lnet/typeblog/socks/ProfileFragment;->resetTextN(Landroid/preference/EditTextPreference;Ljava/lang/Object;)V

    return v1

    .line 189
    :cond_2d
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefPort:Landroid/preference/EditTextPreference;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_50

    .line 190
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3d

    return v2

    .line 193
    :cond_3d
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/typeblog/socks/util/Profile;->setPort(I)V

    .line 194
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefPort:Landroid/preference/EditTextPreference;

    invoke-direct {p0, p1, p2}, Lnet/typeblog/socks/ProfileFragment;->resetTextN(Landroid/preference/EditTextPreference;Ljava/lang/Object;)V

    return v1

    .line 196
    :cond_50
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefUserpw:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_62

    .line 197
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lnet/typeblog/socks/util/Profile;->setIsUserpw(Z)V

    return v1

    .line 199
    :cond_62
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefUsername:Landroid/preference/EditTextPreference;

    if-ne p1, v0, :cond_75

    .line 200
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/typeblog/socks/util/Profile;->setUsername(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefUsername:Landroid/preference/EditTextPreference;

    invoke-direct {p0, p1, p2}, Lnet/typeblog/socks/ProfileFragment;->resetTextN(Landroid/preference/EditTextPreference;Ljava/lang/Object;)V

    return v1

    .line 203
    :cond_75
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefPassword:Landroid/preference/EditTextPreference;

    if-ne p1, v0, :cond_88

    .line 204
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/typeblog/socks/util/Profile;->setPassword(Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefPassword:Landroid/preference/EditTextPreference;

    invoke-direct {p0, p1, p2}, Lnet/typeblog/socks/ProfileFragment;->resetTextN(Landroid/preference/EditTextPreference;Ljava/lang/Object;)V

    return v1

    .line 207
    :cond_88
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefRoutes:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_9b

    .line 208
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/typeblog/socks/util/Profile;->setRoute(Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefRoutes:Landroid/preference/ListPreference;

    invoke-direct {p0, p1, p2}, Lnet/typeblog/socks/ProfileFragment;->resetListN(Landroid/preference/ListPreference;Ljava/lang/Object;)V

    return v1

    .line 211
    :cond_9b
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefDns:Landroid/preference/EditTextPreference;

    if-ne p1, v0, :cond_ae

    .line 212
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/typeblog/socks/util/Profile;->setDns(Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefDns:Landroid/preference/EditTextPreference;

    invoke-direct {p0, p1, p2}, Lnet/typeblog/socks/ProfileFragment;->resetTextN(Landroid/preference/EditTextPreference;Ljava/lang/Object;)V

    return v1

    .line 215
    :cond_ae
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefDnsPort:Landroid/preference/EditTextPreference;

    if-ne p1, v0, :cond_d0

    .line 216
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_bd

    return v2

    .line 219
    :cond_bd
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/typeblog/socks/util/Profile;->setDnsPort(I)V

    .line 220
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefDnsPort:Landroid/preference/EditTextPreference;

    invoke-direct {p0, p1, p2}, Lnet/typeblog/socks/ProfileFragment;->resetTextN(Landroid/preference/EditTextPreference;Ljava/lang/Object;)V

    return v1

    .line 222
    :cond_d0
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefPerApp:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_e2

    .line 223
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lnet/typeblog/socks/util/Profile;->setIsPerApp(Z)V

    return v1

    .line 225
    :cond_e2
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefAppBypass:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_f4

    .line 226
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lnet/typeblog/socks/util/Profile;->setIsBypassApp(Z)V

    return v1

    .line 228
    :cond_f4
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefAppList:Landroid/preference/EditTextPreference;

    if-ne p1, v0, :cond_102

    .line 229
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/typeblog/socks/util/Profile;->setAppList(Ljava/lang/String;)V

    return v1

    .line 231
    :cond_102
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefIPv6:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_114

    .line 232
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lnet/typeblog/socks/util/Profile;->setHasIPv6(Z)V

    return v1

    .line 234
    :cond_114
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefUDP:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_126

    .line 235
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lnet/typeblog/socks/util/Profile;->setHasUDP(Z)V

    return v1

    .line 237
    :cond_126
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefUDPGW:Landroid/preference/EditTextPreference;

    if-ne p1, v0, :cond_139

    .line 238
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/typeblog/socks/util/Profile;->setUDPGW(Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefUDPGW:Landroid/preference/EditTextPreference;

    invoke-direct {p0, p1, p2}, Lnet/typeblog/socks/ProfileFragment;->resetTextN(Landroid/preference/EditTextPreference;Ljava/lang/Object;)V

    return v1

    .line 241
    :cond_139
    iget-object v0, p0, Lnet/typeblog/socks/ProfileFragment;->mPrefAuto:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_14b

    .line 242
    iget-object p1, p0, Lnet/typeblog/socks/ProfileFragment;->mProfile:Lnet/typeblog/socks/util/Profile;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lnet/typeblog/socks/util/Profile;->setAutoConnect(Z)V

    return v1

    :cond_14b
    return v2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
