.class public final Lcom/android/tools/r8/internal/ti;
.super Lcom/android/tools/r8/internal/gy;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/XQ;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/gy;-><init>(Lcom/android/tools/r8/internal/XQ;)V

    return-void
.end method


# virtual methods
.method public final a(IILcom/android/tools/r8/internal/hr0;Lcom/android/tools/r8/internal/jr0;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/gy;->a(IILcom/android/tools/r8/internal/hr0;Lcom/android/tools/r8/internal/jr0;)V

    new-instance p1, Lcom/android/tools/r8/internal/gy;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/gy;-><init>(Lcom/android/tools/r8/internal/XQ;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p4, p1, p2}, Lcom/android/tools/r8/internal/gy;->a(Lcom/android/tools/r8/internal/jr0;Lcom/android/tools/r8/internal/gy;I)Z

    iget-object p3, p1, Lcom/android/tools/r8/internal/gy;->b:[I

    iput-object p3, p0, Lcom/android/tools/r8/internal/gy;->b:[I

    iget-object p3, p1, Lcom/android/tools/r8/internal/gy;->c:[I

    iput-object p3, p0, Lcom/android/tools/r8/internal/gy;->c:[I

    iput-short p2, p0, Lcom/android/tools/r8/internal/gy;->f:S

    iget-object p2, p1, Lcom/android/tools/r8/internal/gy;->d:[I

    iput-object p2, p0, Lcom/android/tools/r8/internal/gy;->d:[I

    iget-object p2, p1, Lcom/android/tools/r8/internal/gy;->e:[I

    iput-object p2, p0, Lcom/android/tools/r8/internal/gy;->e:[I

    iget-short p2, p1, Lcom/android/tools/r8/internal/gy;->g:S

    iput-short p2, p0, Lcom/android/tools/r8/internal/gy;->g:S

    iget p2, p1, Lcom/android/tools/r8/internal/gy;->h:I

    iput p2, p0, Lcom/android/tools/r8/internal/gy;->h:I

    iget-object p1, p1, Lcom/android/tools/r8/internal/gy;->i:[I

    iput-object p1, p0, Lcom/android/tools/r8/internal/gy;->i:[I

    return-void
.end method
