.class public Lcom/android/tools/r8/internal/Pp;
.super Lcom/android/tools/r8/internal/xn;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/xn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ShortBuffer;IILcom/android/tools/r8/graph/x5;)[Lcom/android/tools/r8/internal/Np;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Op;

    invoke-direct {v0, p2, p3, p1}, Lcom/android/tools/r8/internal/Op;-><init>(IILjava/nio/ShortBuffer;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    iget p2, v0, Lcom/android/tools/r8/internal/Op;->a:I

    iget p3, v0, Lcom/android/tools/r8/internal/Op;->d:I

    sub-int/2addr p2, p3

    if-lez p2, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Op;->a()I

    move-result p2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Op;->a()I

    move-result p3

    invoke-static {p2, p3, v0, p4}, Lcom/android/tools/r8/internal/xn;->a(IILcom/android/tools/r8/internal/Op;Lcom/android/tools/r8/graph/x5;)Lcom/android/tools/r8/internal/Np;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/tools/r8/internal/Np;->c:[Lcom/android/tools/r8/internal/Np;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/tools/r8/internal/Np;

    return-object p1
.end method
