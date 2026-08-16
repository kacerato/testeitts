.class public final Lh1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/jspecify/annotations/NullMarked;
.end annotation


# instance fields
.field public final a:Lh1/F;

.field public final b:Z

.field public final c:Lh1/L;


# direct methods
.method public constructor <init>(Lh1/L;ZLh1/F;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/b;->c:Lh1/L;

    iput-boolean p2, p0, Lh1/b;->b:Z

    iput-object p3, p0, Lh1/b;->a:Lh1/F;

    return-void
.end method

.method public static bridge synthetic a(Lh1/b;)Lh1/F;
    .locals 0

    iget-object p0, p0, Lh1/b;->a:Lh1/F;

    return-object p0
.end method

.method public static c(Lh1/F;)Lh1/b;
    .locals 4

    new-instance v0, Lh1/b;

    new-instance v1, Lh1/L;

    invoke-direct {v1, p0}, Lh1/L;-><init>(Lh1/F;)V

    sget-object p0, Lh1/E;->b:Lh1/F;

    const v2, 0x7fffffff

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p0, v2}, Lh1/b;-><init>(Lh1/L;ZLh1/F;I)V

    return-object v0
.end method

.method public static bridge synthetic e(Lh1/b;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Lh1/b;->h(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Lh1/b;)Z
    .locals 0

    iget-boolean p0, p0, Lh1/b;->b:Z

    return p0
.end method


# virtual methods
.method public final b()Lh1/b;
    .locals 5

    iget-object v0, p0, Lh1/b;->a:Lh1/F;

    new-instance v1, Lh1/b;

    iget-object v2, p0, Lh1/b;->c:Lh1/L;

    const/4 v3, 0x1

    const v4, 0x7fffffff

    invoke-direct {v1, v2, v3, v0, v4}, Lh1/b;-><init>(Lh1/L;ZLh1/F;I)V

    return-object v1
.end method

.method public final d(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1

    new-instance v0, Lh1/M;

    invoke-direct {v0, p0, p1}, Lh1/M;-><init>(Lh1/b;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final f(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lh1/b;->h(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 3

    new-instance v0, Lh1/K;

    iget-object v1, p0, Lh1/b;->c:Lh1/L;

    iget-object v2, v1, Lh1/L;->a:Lh1/F;

    invoke-direct {v0, v1, p0, p1, v2}, Lh1/K;-><init>(Lh1/L;Lh1/b;Ljava/lang/CharSequence;Lh1/F;)V

    return-object v0
.end method
