.class public final Lcom/android/tools/r8/internal/Sl;
.super Lcom/android/tools/r8/internal/Ql;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:Lcom/android/tools/r8/internal/dl;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/android/tools/r8/internal/Pl;

.field public final f:Lcom/android/tools/r8/internal/Cl;

.field public g:I

.field public h:[Lcom/android/tools/r8/internal/Ol;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/dl;Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/Cl;I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ql;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Sl;->c:Lcom/android/tools/r8/internal/dl;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dl;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/android/tools/r8/internal/Ul;->a(Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/Cl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Sl;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Sl;->e:Lcom/android/tools/r8/internal/Pl;

    iput p4, p0, Lcom/android/tools/r8/internal/Sl;->b:I

    iput-object p3, p0, Lcom/android/tools/r8/internal/Sl;->f:Lcom/android/tools/r8/internal/Cl;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/tools/r8/internal/Sl;->g:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Pl;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sl;->e:Lcom/android/tools/r8/internal/Pl;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sl;->c:Lcom/android/tools/r8/internal/dl;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/fW;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sl;->c:Lcom/android/tools/r8/internal/dl;

    return-object v0
.end method
