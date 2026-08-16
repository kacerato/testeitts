.class public final Lcom/android/tools/r8/internal/V3;
.super Lcom/android/tools/r8/internal/vt0;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/U3;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Lcom/android/tools/r8/internal/xt0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/U3;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/U3;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/V3;->c:Lcom/android/tools/r8/internal/U3;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/vt0;Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/vt0;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/xt0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/xt0;-><init>(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/vt0;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/V3;->b:Lcom/android/tools/r8/internal/xt0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/V3;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->u()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->r()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->c()V

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/V3;->b:Lcom/android/tools/r8/internal/xt0;

    .line 7
    iget-object v1, v1, Lcom/android/tools/r8/internal/xt0;->b:Lcom/android/tools/r8/internal/vt0;

    .line 8
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lL;->g()V

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/V3;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/internal/V3;->a:Ljava/lang/Class;

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_2

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/V3;->a:Ljava/lang/Class;

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V
    .locals 4

    if-nez p2, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qL;->i()Lcom/android/tools/r8/internal/qL;

    return-void

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qL;->d()V

    .line 19
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 20
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/android/tools/r8/internal/V3;->b:Lcom/android/tools/r8/internal/xt0;

    invoke-virtual {v3, p1, v2}, Lcom/android/tools/r8/internal/xt0;->a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qL;->f()V

    return-void
.end method
