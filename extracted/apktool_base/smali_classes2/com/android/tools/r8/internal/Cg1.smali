.class public final synthetic Lcom/android/tools/r8/internal/Cg1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/jJ;

.field public final synthetic c:[B

.field public final synthetic d:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/jJ;[BLjava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Cg1;->b:Lcom/android/tools/r8/internal/jJ;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Cg1;->c:[B

    iput-object p3, p0, Lcom/android/tools/r8/internal/Cg1;->d:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cg1;->b:Lcom/android/tools/r8/internal/jJ;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Cg1;->c:[B

    iget-object v2, p0, Lcom/android/tools/r8/internal/Cg1;->d:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/r8/ProgramResource$Kind;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/kJ;->a(Lcom/android/tools/r8/internal/jJ;[BLjava/util/Set;Lcom/android/tools/r8/ProgramResource$Kind;)Lcom/android/tools/r8/ProgramResource;

    move-result-object p1

    return-object p1
.end method
