.class public final Lcom/android/tools/r8/internal/IC;
.super Lcom/android/tools/r8/internal/WB;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/internal/PC;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/WB;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/KC;->c:Lcom/android/tools/r8/internal/KC;

    iput-object v0, p0, Lcom/android/tools/r8/internal/IC;->a:Lcom/android/tools/r8/internal/PC;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/IC;)Lcom/android/tools/r8/internal/IC;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/IC;->a:Lcom/android/tools/r8/internal/PC;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/internal/IC;->a:Lcom/android/tools/r8/internal/PC;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/IC;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/IC;->a:Lcom/android/tools/r8/internal/PC;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/IC;->a:Lcom/android/tools/r8/internal/PC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/PC;->b()Lcom/android/tools/r8/internal/PC;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/IC;->a:Lcom/android/tools/r8/internal/PC;

    .line 8
    iput-boolean v1, p0, Lcom/android/tools/r8/internal/IC;->b:Z

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/IC;->a:Lcom/android/tools/r8/internal/PC;

    iget-object p1, p1, Lcom/android/tools/r8/internal/IC;->a:Lcom/android/tools/r8/internal/PC;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    :goto_0
    iget v2, p1, Lcom/android/tools/r8/internal/PC;->b:I

    if-ge v1, v2, :cond_1

    .line 11
    iget-object v2, p1, Lcom/android/tools/r8/internal/PC;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/PC;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/PC;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iput-object v0, p0, Lcom/android/tools/r8/internal/IC;->a:Lcom/android/tools/r8/internal/PC;

    return-object p0
.end method

.method public final a(Ljava/util/Set;)Lcom/android/tools/r8/internal/IC;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/WB;->a(Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/QC;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/IC;->a:Lcom/android/tools/r8/internal/PC;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/IC;->b:Z

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/IC;->a:Lcom/android/tools/r8/internal/PC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/PC;->c()Lcom/android/tools/r8/internal/PC;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/IC;->a:Lcom/android/tools/r8/internal/PC;

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/PC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/WB;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/IC;->a:Lcom/android/tools/r8/internal/PC;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/IC;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/IC;->a:Lcom/android/tools/r8/internal/PC;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/tools/r8/internal/IC;->a:Lcom/android/tools/r8/internal/PC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/PC;->b()Lcom/android/tools/r8/internal/PC;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/IC;->a:Lcom/android/tools/r8/internal/PC;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/IC;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/IC;->a:Lcom/android/tools/r8/internal/PC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/PC;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/PC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/IC;->a:Lcom/android/tools/r8/internal/PC;

    return-object p0
.end method
