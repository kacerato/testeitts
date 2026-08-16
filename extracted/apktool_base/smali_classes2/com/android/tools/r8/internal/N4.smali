.class public final synthetic Lcom/android/tools/r8/internal/N4;
.super Lcom/android/tools/r8/internal/XY;
.source "SourceFile"


# static fields
.field public static final h:Lcom/android/tools/r8/internal/N4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/N4;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/N4;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/N4;->h:Lcom/android/tools/r8/internal/N4;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "getFlags$kotlin_metadata()I"

    const/4 v1, 0x0

    const-class v2, Lcom/android/tools/r8/internal/wQ;

    const-string v3, "flags"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/tools/r8/internal/XY;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/tools/r8/internal/wQ;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p2, Lcom/android/tools/r8/internal/wQ;->a:I

    return-void
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/wQ;

    iget p1, p1, Lcom/android/tools/r8/internal/wQ;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
