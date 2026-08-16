.class public final Lcom/android/tools/r8/internal/t7;
.super Lcom/android/tools/r8/internal/t50;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/t7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/t7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/t7;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/t7;->a:Lcom/android/tools/r8/internal/t7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/t50;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t50;
    .locals 10

    .line 1
    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 4
    new-instance v2, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    .line 6
    new-instance p1, Lcom/android/tools/r8/internal/lJ;

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v4

    .line 8
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v5

    .line 9
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/tools/r8/internal/lJ;-><init>(Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;ZZZ)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/t50;
    .locals 10

    .line 10
    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 11
    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 12
    new-instance v1, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 13
    new-instance v2, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 14
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    .line 15
    new-instance p1, Lcom/android/tools/r8/internal/lJ;

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v4

    .line 17
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v5

    .line 18
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/tools/r8/internal/lJ;-><init>(Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;ZZZ)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/WJ;)Lcom/android/tools/r8/internal/t50;
    .locals 10

    .line 19
    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 20
    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 21
    new-instance v1, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 22
    new-instance v2, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/IC;-><init>()V

    .line 23
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    .line 24
    new-instance p1, Lcom/android/tools/r8/internal/lJ;

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v4

    .line 26
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v5

    .line 27
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/tools/r8/internal/lJ;-><init>(Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;ZZZ)V

    return-object p1
.end method

.method public final c()Lcom/android/tools/r8/internal/t50;
    .locals 0

    return-object p0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/android/tools/r8/internal/t50;
    .locals 11

    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/IC;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/IC;-><init>()V

    new-instance v10, Lcom/android/tools/r8/internal/lJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/tools/r8/internal/lJ;-><init>(Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;ZZZ)V

    return-object v10
.end method

.method public final f()Lcom/android/tools/r8/internal/t50;
    .locals 11

    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/IC;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/IC;-><init>()V

    new-instance v10, Lcom/android/tools/r8/internal/lJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/tools/r8/internal/lJ;-><init>(Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;ZZZ)V

    return-object v10
.end method

.method public final g()Lcom/android/tools/r8/internal/t50;
    .locals 11

    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/IC;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/IC;-><init>()V

    new-instance v10, Lcom/android/tools/r8/internal/lJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/tools/r8/internal/lJ;-><init>(Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;ZZZ)V

    return-object v10
.end method
