.class public final Le1/J;
.super Le1/K;
.source "SourceFile"


# instance fields
.field public final transient d:I

.field public final transient e:I

.field public final synthetic f:Le1/K;


# direct methods
.method public constructor <init>(Le1/K;II)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Le1/J;->f:Le1/K;

    invoke-direct {p0}, Le1/K;-><init>()V

    iput p2, p0, Le1/J;->d:I

    iput p3, p0, Le1/J;->e:I

    return-void
.end method


# virtual methods
.method public final b()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le1/J;->f:Le1/K;

    invoke-virtual {v0}, Le1/H;->b()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Le1/J;->f:Le1/K;

    invoke-virtual {v0}, Le1/H;->c()I

    move-result v0

    iget v1, p0, Le1/J;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Le1/J;->f:Le1/K;

    invoke-virtual {v0}, Le1/H;->c()I

    move-result v0

    iget v1, p0, Le1/J;->d:I

    add-int/2addr v0, v1

    iget v1, p0, Le1/J;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Le1/J;->e:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Le1/E;->a(IILjava/lang/String;)I

    iget-object v0, p0, Le1/J;->f:Le1/K;

    iget v1, p0, Le1/J;->d:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j(II)Le1/K;
    .locals 2

    iget v0, p0, Le1/J;->e:I

    invoke-static {p1, p2, v0}, Le1/E;->c(III)V

    iget v0, p0, Le1/J;->d:I

    iget-object v1, p0, Le1/J;->f:Le1/K;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Le1/K;->j(II)Le1/K;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Le1/J;->e:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Le1/K;->j(II)Le1/K;

    move-result-object p1

    return-object p1
.end method
