.class public final Lk0/z$a;
.super Lk0/C;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/z;->i(Lk0/D;)Lk0/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tool.kt\ncom/google/ai/edge/litertlm/ToolKt$tool$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,430:1\n777#2:431\n873#2:432\n1807#2,3:433\n874#2:436\n1586#2:437\n1661#2,3:438\n*S KotlinDebug\n*F\n+ 1 Tool.kt\ncom/google/ai/edge/litertlm/ToolKt$tool$1\n*L\n160#1:431\n160#1:432\n160#1:433,3\n160#1:436\n161#1:437\n161#1:438,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nTool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tool.kt\ncom/google/ai/edge/litertlm/ToolKt$tool$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,430:1\n777#2:431\n873#2:432\n1807#2,3:433\n874#2:436\n1586#2:437\n1661#2,3:438\n*S KotlinDebug\n*F\n+ 1 Tool.kt\ncom/google/ai/edge/litertlm/ToolKt$tool$1\n*L\n160#1:431\n160#1:432\n160#1:433,3\n160#1:436\n161#1:437\n161#1:438,3\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lk0/D;


# direct methods
.method public constructor <init>(Lk0/D;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "$toolSet"
        }
    .end annotation

    iput-object p1, p0, Lk0/z$a;->a:Lk0/D;

    invoke-direct {p0}, Lk0/C;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lk0/k;",
            ">;"
        }
    .end annotation

    sget-object v0, Lk0/j;->a:Lk0/j;

    invoke-virtual {v0}, Lk0/j;->a()Z

    move-result v0

    iget-object v1, p0, Lk0/z$a;->a:Lk0/D;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, LLf/b;->i(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/full/KClasses;->getFunctions(Lkotlin/reflect/KClass;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, LWf/h;

    invoke-interface {v4}, LWf/b;->getAnnotations()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/annotation/Annotation;

    instance-of v5, v5, Lk0/v;

    if-eqz v5, :cond_2

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lk0/z$a;->a:Lk0/D;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lpf/I;->d0(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LWf/h;

    invoke-interface {v4}, LWf/c;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_4

    invoke-static {v5}, Lk0/z;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    new-instance v6, Lk0/r;

    invoke-direct {v6, v1, v4, v0}, Lk0/r;-><init>(Ljava/lang/Object;LWf/h;Z)V

    invoke-static {v5, v6}, Lnf/v0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lnf/Z;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {v3}, Lpf/o0;->D0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
