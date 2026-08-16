.class public Lcb/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lcb/t;


# instance fields
.field public a:Lcb/v;

.field public b:Lcb/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcb/t;
    .locals 1

    sget-object v0, Lcb/t;->c:Lcb/t;

    if-nez v0, :cond_0

    new-instance v0, Lcb/t;

    invoke-direct {v0}, Lcb/t;-><init>()V

    sput-object v0, Lcb/t;->c:Lcb/t;

    :cond_0
    sget-object v0, Lcb/t;->c:Lcb/t;

    return-object v0
.end method


# virtual methods
.method public b(Lcb/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcb/b<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcb/t;->b:Lcb/f;

    if-nez v0, :cond_0

    new-instance v0, Lcb/f;

    invoke-direct {v0}, Lcb/f;-><init>()V

    iput-object v0, p0, Lcb/t;->b:Lcb/f;

    :cond_0
    iget-object v0, p0, Lcb/t;->b:Lcb/f;

    iget-object v1, p1, Lcb/b;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget p1, p1, Lcb/b;->c:I

    invoke-virtual {v0, v1, v2, p1}, Lcb/f;->c([Ljava/lang/Object;II)V

    return-void
.end method

.method public c(Lcb/b;Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcb/b<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcb/t;->a:Lcb/v;

    if-nez v0, :cond_0

    new-instance v0, Lcb/v;

    invoke-direct {v0}, Lcb/v;-><init>()V

    iput-object v0, p0, Lcb/t;->a:Lcb/v;

    :cond_0
    iget-object v0, p0, Lcb/t;->a:Lcb/v;

    iget-object v1, p1, Lcb/b;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget p1, p1, Lcb/b;->c:I

    invoke-virtual {v0, v1, p2, v2, p1}, Lcb/v;->c([Ljava/lang/Object;Ljava/util/Comparator;II)V

    return-void
.end method

.method public d([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    iget-object v0, p0, Lcb/t;->b:Lcb/f;

    if-nez v0, :cond_0

    new-instance v0, Lcb/f;

    invoke-direct {v0}, Lcb/f;-><init>()V

    iput-object v0, p0, Lcb/t;->b:Lcb/f;

    :cond_0
    iget-object v0, p0, Lcb/t;->b:Lcb/f;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcb/f;->c([Ljava/lang/Object;II)V

    return-void
.end method

.method public e([Ljava/lang/Object;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "fromIndex",
            "toIndex"
        }
    .end annotation

    iget-object v0, p0, Lcb/t;->b:Lcb/f;

    if-nez v0, :cond_0

    new-instance v0, Lcb/f;

    invoke-direct {v0}, Lcb/f;-><init>()V

    iput-object v0, p0, Lcb/t;->b:Lcb/f;

    :cond_0
    iget-object v0, p0, Lcb/t;->b:Lcb/f;

    invoke-virtual {v0, p1, p2, p3}, Lcb/f;->c([Ljava/lang/Object;II)V

    return-void
.end method

.method public f([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcb/t;->a:Lcb/v;

    if-nez v0, :cond_0

    new-instance v0, Lcb/v;

    invoke-direct {v0}, Lcb/v;-><init>()V

    iput-object v0, p0, Lcb/t;->a:Lcb/v;

    :cond_0
    iget-object v0, p0, Lcb/t;->a:Lcb/v;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Lcb/v;->c([Ljava/lang/Object;Ljava/util/Comparator;II)V

    return-void
.end method

.method public g([Ljava/lang/Object;Ljava/util/Comparator;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "c",
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcb/t;->a:Lcb/v;

    if-nez v0, :cond_0

    new-instance v0, Lcb/v;

    invoke-direct {v0}, Lcb/v;-><init>()V

    iput-object v0, p0, Lcb/t;->a:Lcb/v;

    :cond_0
    iget-object v0, p0, Lcb/t;->a:Lcb/v;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcb/v;->c([Ljava/lang/Object;Ljava/util/Comparator;II)V

    return-void
.end method
