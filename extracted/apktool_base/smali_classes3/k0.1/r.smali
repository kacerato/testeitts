.class public final Lk0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tool.kt\ncom/google/ai/edge/litertlm/ReflectionTool\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,430:1\n1#2:431\n1300#3,2:432\n1315#3,4:434\n1586#3:445\n1661#3,3:446\n534#4,7:438\n*S KotlinDebug\n*F\n+ 1 Tool.kt\ncom/google/ai/edge/litertlm/ReflectionTool\n*L\n332#1:432,2\n332#1:434,4\n361#1:445\n361#1:446,3\n343#1:438,7\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nTool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tool.kt\ncom/google/ai/edge/litertlm/ReflectionTool\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,430:1\n1#2:431\n1300#3,2:432\n1315#3,4:434\n1586#3:445\n1661#3,3:446\n534#4,7:438\n*S KotlinDebug\n*F\n+ 1 Tool.kt\ncom/google/ai/edge/litertlm/ReflectionTool\n*L\n332#1:432,2\n332#1:434,4\n361#1:445\n361#1:446,3\n343#1:438,7\n*E\n"
    }
.end annotation


# static fields
.field public static final d:Lk0/r$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:LWf/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LWf/h<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lk0/r$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk0/r$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lk0/r;->d:Lk0/r$a;

    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, "string"

    invoke-static {v0, v1}, Lnf/v0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lnf/Z;

    move-result-object v2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, "integer"

    invoke-static {v0, v1}, Lnf/v0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lnf/Z;

    move-result-object v3

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, "boolean"

    invoke-static {v0, v1}, Lnf/v0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lnf/Z;

    move-result-object v4

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, "number"

    invoke-static {v0, v1}, Lnf/v0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lnf/Z;

    move-result-object v5

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0, v1}, Lnf/v0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lnf/Z;

    move-result-object v6

    const-class v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, "array"

    invoke-static {v0, v1}, Lnf/v0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lnf/Z;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Lnf/Z;

    move-result-object v0

    invoke-static {v0}, Lpf/o0;->W([Lnf/Z;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lk0/r;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;LWf/h;Z)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LWf/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "kFunction",
            "useSnakeCase"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "LWf/h<",
            "*>;Z)V"
        }
    .end annotation

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kFunction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/r;->a:Ljava/lang/Object;

    iput-object p2, p0, Lk0/r;->b:LWf/h;

    iput-boolean p3, p0, Lk0/r;->c:Z

    return-void
.end method

.method public static synthetic c(Lkotlin/reflect/KClass;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lk0/r;->h(Lkotlin/reflect/KClass;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lkotlin/reflect/KClass;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "it"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a()Lcom/google/gson/JsonObject;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lk0/r;->b:LWf/h;

    invoke-interface {v0}, LWf/b;->getAnnotations()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/annotation/Annotation;

    instance-of v3, v3, Lk0/v;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    instance-of v0, v1, Lk0/v;

    if-eqz v0, :cond_2

    check-cast v1, Lk0/v;

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_3

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    return-object v0

    :cond_3
    invoke-interface {v1}, Lk0/v;->description()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    iget-boolean v3, p0, Lk0/r;->c:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lk0/r;->b:LWf/h;

    invoke-interface {v3}, LWf/c;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lk0/z;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lk0/r;->b:LWf/h;

    invoke-interface {v3}, LWf/c;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_2
    const-string v4, "name"

    invoke-virtual {v1, v4, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "description"

    invoke-virtual {v1, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lk0/r;->b:LWf/h;

    invoke-interface {v0}, LWf/c;->getParameters()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lpf/S;->g2(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LWf/m;

    invoke-interface {v6}, LWf/b;->getAnnotations()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/annotation/Annotation;

    instance-of v9, v9, Lk0/B;

    if-eqz v9, :cond_5

    goto :goto_4

    :cond_6
    move-object v8, v2

    :goto_4
    instance-of v7, v8, Lk0/B;

    if-eqz v7, :cond_7

    check-cast v8, Lk0/B;

    goto :goto_5

    :cond_7
    move-object v8, v2

    :goto_5
    invoke-interface {v6}, LWf/m;->getType()LWf/r;

    move-result-object v7

    invoke-virtual {p0, v7}, Lk0/r;->g(LWf/r;)Lcom/google/gson/JsonObject;

    move-result-object v7

    if-eqz v8, :cond_8

    invoke-interface {v8}, Lk0/B;->description()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v7, v3, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-interface {v6}, LWf/m;->getType()LWf/r;

    move-result-object v8

    invoke-interface {v8}, LWf/r;->y()Z

    move-result v8

    if-eqz v8, :cond_9

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v9, "nullable"

    invoke-virtual {v7, v9, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_9
    invoke-virtual {p0, v6}, Lk0/r;->j(LWf/m;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v7}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_3

    :cond_a
    new-instance v2, Lcom/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/google/gson/JsonArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LWf/m;

    invoke-interface {v3}, LWf/m;->w()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {p0, v3}, Lk0/r;->j(LWf/m;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v3, "type"

    const-string v5, "object"

    invoke-virtual {v0, v3, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "properties"

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "required"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_d
    const-string v2, "parameters"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :cond_e
    return-object v1
.end method

.method public b(Lcom/google/gson/JsonObject;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lk0/r;->b:LWf/h;

    invoke-interface {v0}, LWf/c;->getParameters()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/LinkedHashMap;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lpf/I;->d0(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lpf/n0;->j(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, LVf/u;->w(II)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, LWf/m;

    invoke-interface {v3}, LWf/m;->getIndex()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v3, p0, Lk0/r;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-interface {v3}, LWf/m;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Lk0/r;->j(LWf/m;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Lk0/r;->j(LWf/m;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-interface {v3}, LWf/m;->getType()LWf/r;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lk0/r;->d(Lcom/google/gson/JsonElement;LWf/r;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-interface {v3}, LWf/m;->w()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0, v3}, Lk0/r;->j(LWf/m;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lk0/r;->b:LWf/h;

    invoke-interface {v0, p1}, LWf/c;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/google/gson/JsonElement;LWf/r;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "type"
        }
    .end annotation

    invoke-interface {p2}, LWf/r;->E()LWf/f;

    move-result-object v0

    const-class v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, p1, Lcom/google/gson/JsonArray;

    if-eqz v1, :cond_2

    invoke-interface {p2}, LWf/r;->getArguments()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lpf/S;->L2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LWf/t;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, LWf/t;->g()LWf/r;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lpf/I;->d0(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-static {v1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p2}, Lk0/r;->d(Lcom/google/gson/JsonElement;LWf/r;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object p1, v0

    goto/16 :goto_2

    :cond_2
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    instance-of p2, p1, Lcom/google/gson/JsonPrimitive;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->getAsInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    :cond_3
    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    instance-of p2, p1, Lcom/google/gson/JsonPrimitive;

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->getAsFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_2

    :cond_4
    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    instance-of p2, p1, Lcom/google/gson/JsonPrimitive;

    if-eqz p2, :cond_5

    move-object p2, p1

    check-cast p2, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->getAsDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_2

    :cond_5
    const-class p2, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    instance-of p2, p1, Lcom/google/gson/JsonPrimitive;

    if-eqz p2, :cond_6

    move-object p2, p1

    check-cast p2, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    instance-of p2, p1, Lcom/google/gson/JsonPrimitive;

    if-eqz p2, :cond_7

    move-object p2, p1

    check-cast p2, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-static {p1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final e()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lk0/r;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final f()LWf/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LWf/h<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lk0/r;->b:LWf/h;

    return-object v0
.end method

.method public final g(LWf/r;)Lcom/google/gson/JsonObject;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    invoke-interface {p1}, LWf/r;->E()LWf/f;

    move-result-object v0

    sget-object v1, Lk0/r;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, LWf/r;->getArguments()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lpf/S;->L2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LWf/t;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LWf/t;->g()LWf/r;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "items"

    invoke-virtual {p0, p1}, Lk0/r;->g(LWf/r;)Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "List type argument is missing."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    new-instance v8, Lk0/q;

    invoke-direct {v8}, Lk0/q;-><init>()V

    const/16 v9, 0x1f

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v10}, Lpf/S;->r3(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;LMf/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Allowed types are: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lk0/r;->c:Z

    return v0
.end method

.method public final j(LWf/m;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$toModelParamName"
        }
    .end annotation

    iget-boolean v0, p0, Lk0/r;->c:Z

    invoke-interface {p1}, LWf/m;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-static {p1}, Lk0/z;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
