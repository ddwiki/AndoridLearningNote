.class public Lcom/umeng/socialize/location/GetLocationTask;
.super Landroid/os/AsyncTask;
.source "GetLocationTask.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Location"


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mProvider:Lcom/umeng/socialize/location/DefaultLocationProvider;


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/location/DefaultLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/umeng/socialize/location/GetLocationTask;->mProvider:Lcom/umeng/socialize/location/DefaultLocationProvider;

    .line 24
    return-void
.end method

.method private getLocationBuffer()Landroid/location/Location;
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/umeng/socialize/location/GetLocationTask;->mProvider:Lcom/umeng/socialize/location/DefaultLocationProvider;

    invoke-virtual {v0}, Lcom/umeng/socialize/location/DefaultLocationProvider;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    const-string v0, "Location"

    const-string v1, "Fetch gps info from default failed,then fetch form network.."

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/umeng/socialize/location/GetLocationTask;->mProvider:Lcom/umeng/socialize/location/DefaultLocationProvider;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/location/DefaultLocationProvider;->setProvider(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/umeng/socialize/location/GetLocationTask;->mProvider:Lcom/umeng/socialize/location/DefaultLocationProvider;

    invoke-virtual {v0}, Lcom/umeng/socialize/location/DefaultLocationProvider;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/umeng/socialize/location/GetLocationTask;->mProvider:Lcom/umeng/socialize/location/DefaultLocationProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/location/DefaultLocationProvider;->setProvider(Ljava/lang/String;)V

    .line 51
    :cond_0
    return-object v0
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/umeng/socialize/location/GetLocationTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/location/Location;
    .locals 4
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x14

    if-lt v1, v0, :cond_1

    .line 40
    :goto_1
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 30
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/umeng/socialize/location/GetLocationTask;->getLocationBuffer()Landroid/location/Location;

    move-result-object v0

    .line 31
    if-nez v0, :cond_0

    .line 35
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/location/GetLocationTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "GetLocationTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/location/GetLocationTask;->doInBackground([Ljava/lang/Void;)Landroid/location/Location;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line -1
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "GetLocationTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
