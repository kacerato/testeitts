.class public final Lcom/android/tools/r8/internal/pu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/XY;

.field public final b:Lcom/android/tools/r8/internal/wx;

.field public final c:Lcom/android/tools/r8/internal/ou;

.field public final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/XY;Lcom/android/tools/r8/internal/wx;Lcom/android/tools/r8/internal/ou;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "protoSet"

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entries"

    invoke-static {p3, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/pu;->a:Lcom/android/tools/r8/internal/XY;

    iput-object p2, p0, Lcom/android/tools/r8/internal/pu;->b:Lcom/android/tools/r8/internal/wx;

    iput-object p3, p0, Lcom/android/tools/r8/internal/pu;->c:Lcom/android/tools/r8/internal/ou;

    iput-object p4, p0, Lcom/android/tools/r8/internal/pu;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;
    .locals 2

    const-string v0, "property"

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/android/tools/r8/internal/pu;->c:Lcom/android/tools/r8/internal/ou;

    iget-object v0, p0, Lcom/android/tools/r8/internal/pu;->b:Lcom/android/tools/r8/internal/wx;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pu;->a:Lcom/android/tools/r8/internal/XY;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/XY;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/wx;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/PI;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/PI;->getNumber()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/ou;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Ljava/lang/Enum;)V
    .locals 3

    const-string v0, "property"

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "value"

    invoke-static {p3, p2}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/pu;->a:Lcom/android/tools/r8/internal/XY;

    iget-object v0, p0, Lcom/android/tools/r8/internal/pu;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/ux;

    iget-object v0, p0, Lcom/android/tools/r8/internal/pu;->a:Lcom/android/tools/r8/internal/XY;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/XY;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 3
    iget v1, p3, Lcom/android/tools/r8/internal/ux;->b:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    sub-int/2addr v1, v2

    .line 4
    iget v2, p3, Lcom/android/tools/r8/internal/ux;->a:I

    shl-int/2addr v1, v2

    not-int v1, v1

    and-int/2addr v0, v1

    iget p3, p3, Lcom/android/tools/r8/internal/ux;->c:I

    shl-int/2addr p3, v2

    add-int/2addr v0, p3

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/internal/XY;->a(Ljava/lang/Integer;Ljava/lang/Object;)V

    return-void
.end method
