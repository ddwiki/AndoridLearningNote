.class final Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters$26;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/newrelic/com/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters;->newEnumTypeHierarchyFactory()Lcom/newrelic/com/google/gson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/newrelic/com/google/gson/Gson;Lcom/newrelic/com/google/gson/reflect/TypeToken;)Lcom/newrelic/com/google/gson/TypeAdapter;
    .locals 2
    .parameter "gson"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/newrelic/com/google/gson/Gson;",
            "Lcom/newrelic/com/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/newrelic/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 755
    .local p2, typeToken:Lcom/newrelic/com/google/gson/reflect/TypeToken;,"Lcom/newrelic/com/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/newrelic/com/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 756
    .local v0, rawType:Ljava/lang/Class;,"Ljava/lang/Class<-TT;>;"
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Ljava/lang/Enum;

    if-ne v0, v1, :cond_1

    .line 757
    :cond_0
    const/4 v1, 0x0

    .line 762
    :goto_0
    return-object v1

    .line 759
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_2

    .line 760
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 762
    :cond_2
    new-instance v1, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;

    invoke-direct {v1, v0}, Lcom/newrelic/com/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;-><init>(Ljava/lang/Class;)V

    goto :goto_0
.end method
