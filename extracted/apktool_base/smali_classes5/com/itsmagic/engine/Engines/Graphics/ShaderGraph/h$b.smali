.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/g;
.implements Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lec/f;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lec/g;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/lang/StringBuilder;

.field public final p:Ljava/lang/StringBuilder;

.field public final q:Ljava/lang/StringBuilder;

.field public final r:Ljava/lang/StringBuilder;

.field public final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "graphData",
            "nodeMap",
            "requiredVertex",
            "requiredFragment",
            "useEasy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->j:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->k:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->l:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->m:Ljava/util/Map;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->n:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->o:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->p:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->q:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->r:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->s:Ljava/util/Map;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->b:Ljava/util/Map;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    :goto_0
    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->c:Ljava/util/Set;

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    :goto_1
    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->d:Ljava/util/Set;

    iput-boolean p5, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->e:Z

    return-void
.end method

.method public static D(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const-string v0, "highp float"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    const-string v3, "highp float4"

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->G(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    return-object v3

    :cond_3
    return-object v0

    :cond_4
    return-object v3

    :cond_5
    const-string p0, "highp float3"

    return-object p0

    :cond_6
    const-string p0, "highp float2"

    return-object p0
.end method

.method public static F(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    const-string v0, "[^A-Za-z0-9_]"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static G(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const-string v0, "float"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const-string v1, "float4"

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return-object v0

    :pswitch_1
    const-string p0, "bool"

    return-object p0

    :pswitch_2
    const-string p0, "mat4"

    return-object p0

    :pswitch_3
    const-string p0, "mat3"

    return-object p0

    :pswitch_4
    return-object v1

    :pswitch_5
    const-string p0, "samplerCube"

    return-object p0

    :pswitch_6
    const-string p0, "sampler2D"

    return-object p0

    :pswitch_7
    return-object v1

    :pswitch_8
    const-string p0, "float3"

    return-object p0

    :pswitch_9
    const-string p0, "float2"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic l(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->n:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public A(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "outputIndex",
            "stage"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->f:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->g:Ljava/util/Map;

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_2

    aget-object v0, v0, p2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->z(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->c(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public B()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lec/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public C()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lec/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public E(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "stage"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->u()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne p2, v2, :cond_1

    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->FRAGMENT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne v1, v3, :cond_1

    return v0

    :cond_1
    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->FRAGMENT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne p2, v3, :cond_2

    if-ne v1, v2, :cond_2

    return v0

    :cond_2
    if-ne p2, v2, :cond_3

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->c:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-ne p2, v3, :cond_4

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->d:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    return v0
.end method

.method public a()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    return-object v0
.end method

.method public b(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "inputIndex"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->m()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    array-length v2, v0

    if-ge p2, v2, :cond_0

    aget-object v0, v0, p2

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->b:Ljava/util/Map;

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    if-nez p2, :cond_2

    return-object v1

    :cond_2
    iget p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromSlot:I

    invoke-virtual {p2, p1, p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->D(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/z;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "outputIndex",
            "stage",
            "type"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne p3, v1, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->f:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->g:Ljava/util/Map;

    :goto_0
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->q()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    aget-object v2, v3, p2

    if-nez v2, :cond_5

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p4, v2, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->u()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->w(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    aget-object p1, v3, p2

    return-object p1

    :cond_2
    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->CUBEMAP:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p4, v2, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->t()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->w(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    aget-object p1, v3, p2

    return-object p1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sg_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_o"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ne p3, v1, :cond_4

    const-string v0, "_v"

    goto :goto_1

    :cond_4
    const-string v0, "_f"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->w(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->D(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->o(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ";"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;)V

    :cond_5
    aget-object p1, v3, p2

    return-object p1
.end method

.method public d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "outputIndex",
            "stage",
            "expression",
            "type"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->f:Ljava/util/Map;

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->g:Ljava/util/Map;

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->q()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v0, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    aput-object p4, v0, p2

    invoke-virtual {p0, p1, p2, p5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->w(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    invoke-virtual {p0, p4, p5}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    return-void
.end method

.method public e(Lec/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sampler"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lec/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stage",
            "functionCode"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->j:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->k:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public g(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "inputIndex",
            "stage",
            "desiredType"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->m()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ltz p2, :cond_0

    array-length v2, v1

    if-ge p2, v2, :cond_0

    aget-object v1, v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->u()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->u()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p0, p1, p2, p4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->p(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne p3, p2, :cond_2

    if-eqz p1, :cond_2

    const-string p2, "getUV0()"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "v.uv0"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1

    :cond_3
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->b:Ljava/util/Map;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;

    if-nez v2, :cond_4

    invoke-virtual {p0, p1, p2, p4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->p(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->u()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    move-result-object v3

    sget-object v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne p3, v4, :cond_5

    sget-object v5, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->FRAGMENT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne v3, v5, :cond_5

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->n:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid stage connection: FRAGMENT -> VERTEX (from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->q(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " out#"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromSlot:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->q(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in#"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->r(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2, p4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->p(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    iget p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromSlot:I

    invoke-virtual {v2, p1, p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->D(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/z;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p1

    sget-object p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->FRAGMENT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    if-ne p3, p2, :cond_6

    if-ne v3, v4, :cond_6

    iget p2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromSlot:I

    invoke-virtual {p0, v2, p2, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->y(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_6
    iget p2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;->fromSlot:I

    invoke-virtual {p0, v2, p2, p3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->A(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-static {p2, p1, p4}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->b(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stage",
            "codeLine"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    const/16 v1, 0xa

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->o:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->p:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    return-void
.end method

.method public i(Lec/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->l:Ljava/util/Map;

    invoke-virtual {p1}, Lec/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j()Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    return-object v0
.end method

.method public k(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "inputIndex"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNodeConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public m()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->e:Z

    const/16 v2, 0xa

    if-eqz v1, :cond_0

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->FRAGMENT:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->b(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->s:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->k:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->e:Z

    if-eqz v1, :cond_3

    const-string v1, "void easyMaterial(inout MaterialInputs material, SubMaterialData smData) {\n"

    goto :goto_2

    :cond_3
    const-string v1, "void material(inout MaterialInputs material) {\n"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->p:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->e:Z

    const/16 v2, 0xa

    if-eqz v1, :cond_0

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h;->b(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->s:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->j:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->e:Z

    if-eqz v1, :cond_3

    const-string v1, "void easyVertex(inout MaterialVertexInputs v) {\n"

    goto :goto_2

    :cond_3
    const-string v1, "void materialVertex(inout MaterialVertexInputs v) {\n"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->o:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const-string v0, "0.0"

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->COLOR:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p1, v1, :cond_1

    const-string p1, "float4(1.0)"

    return-object p1

    :cond_1
    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/4 v1, 0x6

    if-eq p1, v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->t()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->u()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p1, "float4(0.0)"

    return-object p1

    :cond_5
    const-string p1, "float3(0.0)"

    return-object p1

    :cond_6
    const-string p1, "float2(0.0)"

    return-object p1
.end method

.method public final p(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "inputIndex",
            "desiredType"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->k(I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v2, :cond_0

    if-ne p3, v2, :cond_0

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->fileIPP:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->CUBEMAP:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne v1, v3, :cond_1

    if-ne p3, v3, :cond_1

    iget-object p1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->fileIPP:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->j()Ljava/lang/String;

    move-result-object p1

    iget-object p2, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphInputDefault;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->b(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/B;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/B;

    invoke-interface {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/B;->d(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p3, p1, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->u()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->CUBEMAP:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p3, p1, :cond_5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->t()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->o(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final q(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->a:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->v(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->serializedNodeType:Ljava/lang/String;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final r(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "slot"
        }
    .end annotation

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final s(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "sgp_cube_0"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sgp_cube_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Lec/g;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_CUBEMAP:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    invoke-direct {v0, v1, v2, v3, p1}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->e(Lec/g;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "materialParams_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final t()Ljava/lang/String;
    .locals 5

    new-instance v0, Lec/g;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_CUBEMAP:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v4, "sg_default_cubemap"

    invoke-direct {v0, v1, v2, v3, v4}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->e(Lec/g;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "materialParams_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 5

    new-instance v0, Lec/g;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v4, "sg_default_texture"

    invoke-direct {v0, v1, v2, v3, v4}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->e(Lec/g;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "materialParams_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "expression",
            "type"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->COLOR:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p2, v0, :cond_2

    sget-object p2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    :cond_2
    const-string v0, "materialParams_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xf

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string v0, "materialParams."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance p2, Lec/g;

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_CUBEMAP:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    invoke-direct {p2, v0, v1, v2, p1}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->e(Lec/g;)V

    goto :goto_1

    :pswitch_1
    new-instance p2, Lec/g;

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    invoke-direct {p2, v0, v1, v2, p1}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->e(Lec/g;)V

    goto :goto_1

    :pswitch_2
    new-instance p2, Lec/f;

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    invoke-direct {p2, v0, p1}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->i(Lec/f;)V

    goto :goto_1

    :pswitch_3
    new-instance p2, Lec/f;

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    invoke-direct {p2, v0, p1}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->i(Lec/f;)V

    goto :goto_1

    :pswitch_4
    new-instance p2, Lec/f;

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT3:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    invoke-direct {p2, v0, p1}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->i(Lec/f;)V

    goto :goto_1

    :pswitch_5
    new-instance p2, Lec/f;

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT2:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    invoke-direct {p2, v0, p1}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->i(Lec/f;)V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final w(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "outputIndex",
            "type"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->q()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object p1

    array-length p1, p1

    new-array v1, p1, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->i:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    aget-object p1, v1, p2

    if-nez p1, :cond_1

    aput-object p3, v1, p2

    :cond_1
    return-void
.end method

.method public final x(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "sgp_tex_0"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sgp_tex_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Lec/g;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    invoke-direct {v0, v1, v2, v3, p1}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->e(Lec/g;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "materialParams_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final y(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "outputIndex",
            "type"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->q()[Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSlot;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->h:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    aget-object v2, v1, p2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sg_v_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_o"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "varying highp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->G(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ";"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->s:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;->VERTEX:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;

    invoke-virtual {p0, p1, p2, v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->A(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->h(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/w;Ljava/lang/String;)V

    :cond_1
    aget-object p1, v1, p2

    return-object p1
.end method

.method public final z(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;I)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "outputIndex"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eqz v0, :cond_0

    aget-object v0, v0, p2

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1, p2, p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->D(ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/z;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->w(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;ILcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/h$b;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphNode;->j()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    aget-object p1, p1, p2

    return-object p1
.end method
