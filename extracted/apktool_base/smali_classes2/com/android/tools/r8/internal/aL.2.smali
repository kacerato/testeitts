.class public final Lcom/android/tools/r8/internal/aL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/wt0;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Wh;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Wh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/aL;->b:Lcom/android/tools/r8/internal/Wh;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Wh;Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;Lcom/android/tools/r8/internal/ZK;)Lcom/android/tools/r8/internal/vt0;
    .locals 6

    .line 1
    invoke-interface {p3}, Lcom/android/tools/r8/internal/ZK;->value()Ljava/lang/Class;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/Cu0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Cu0;-><init>(Ljava/lang/reflect/Type;)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Wh;->a(Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/z30;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/internal/z30;->a()Ljava/lang/Object;

    move-result-object p0

    .line 4
    invoke-interface {p3}, Lcom/android/tools/r8/internal/ZK;->nullSafe()Z

    move-result v5

    .line 5
    instance-of p3, p0, Lcom/android/tools/r8/internal/vt0;

    if-eqz p3, :cond_0

    .line 6
    check-cast p0, Lcom/android/tools/r8/internal/vt0;

    goto :goto_2

    .line 7
    :cond_0
    instance-of p3, p0, Lcom/android/tools/r8/internal/wt0;

    if-eqz p3, :cond_1

    .line 8
    check-cast p0, Lcom/android/tools/r8/internal/wt0;

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/wt0;->a(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;

    move-result-object p0

    goto :goto_2

    .line 9
    :cond_1
    instance-of p3, p0, Lcom/android/tools/r8/internal/cL;

    if-eqz p3, :cond_4

    .line 10
    instance-of p3, p0, Lcom/android/tools/r8/internal/cL;

    if-eqz p3, :cond_2

    .line 11
    check-cast p0, Lcom/android/tools/r8/internal/cL;

    :goto_0
    move-object v1, p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    .line 12
    :goto_1
    new-instance p0, Lcom/android/tools/r8/internal/et0;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/et0;-><init>(Lcom/android/tools/r8/internal/cL;Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;Lcom/android/tools/r8/internal/dt0;Z)V

    const/4 v5, 0x0

    :goto_2
    if-eqz p0, :cond_3

    if-eqz v5, :cond_3

    .line 13
    new-instance p1, Lcom/android/tools/r8/internal/ut0;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/ut0;-><init>(Lcom/android/tools/r8/internal/vt0;)V

    return-object p1

    :cond_3
    return-object p0

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid attempt to bind an instance of "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as a @JsonAdapter for "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object p0, p2, Lcom/android/tools/r8/internal/Cu0;->b:Ljava/lang/reflect/Type;

    .line 17
    invoke-static {p0}, Lcom/android/tools/r8/internal/d;->c(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;
    .locals 2

    .line 19
    iget-object v0, p2, Lcom/android/tools/r8/internal/Cu0;->a:Ljava/lang/Class;

    .line 20
    const-class v1, Lcom/android/tools/r8/internal/ZK;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ZK;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/aL;->b:Lcom/android/tools/r8/internal/Wh;

    invoke-static {v1, p1, p2, v0}, Lcom/android/tools/r8/internal/aL;->a(Lcom/android/tools/r8/internal/Wh;Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;Lcom/android/tools/r8/internal/ZK;)Lcom/android/tools/r8/internal/vt0;

    move-result-object p1

    return-object p1
.end method
