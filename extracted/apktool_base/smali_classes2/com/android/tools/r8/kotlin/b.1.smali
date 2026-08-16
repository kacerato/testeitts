.class public abstract Lcom/android/tools/r8/kotlin/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/QC;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    const-string v1, "Lkotlin/Boolean"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object v0

    const-string v1, "Lkotlin/Char"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object v0

    const-string v1, "Lkotlin/Byte"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object v0

    const-string v1, "Lkotlin/UByte"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object v0

    const-string v1, "Lkotlin/Short;"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object v0

    const-string v1, "Lkotlin/UShort;"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object v0

    const-string v1, "Lkotlin/Int;"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object v0

    const-string v1, "Lkotlin/UInt;"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object v0

    const-string v1, "Lkotlin/Float;"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object v0

    const-string v1, "Lkotlin/Long;"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object v0

    const-string v1, "Lkotlin/ULong;"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object v0

    const-string v1, "Lkotlin/Double;"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/IC;-><init>()V

    new-instance v2, Lcom/android/tools/r8/kotlin/T1;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/kotlin/T1;-><init>(Lcom/android/tools/r8/internal/IC;)V

    invoke-interface {v0, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    const-string v0, "Lkotlin/Unit;"

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    const-string v0, "Lkotlin/Any;"

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    const-string v0, "Lkotlin/Array;"

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    const-string v0, "Lkotlin/Function;"

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    const-string v0, "Lkotlin/KFunction;"

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/kotlin/b;->a:Lcom/android/tools/r8/internal/QC;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/IC;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Array;"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    return-void
.end method
