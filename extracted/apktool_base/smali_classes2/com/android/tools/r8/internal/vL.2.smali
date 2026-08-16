.class public final synthetic Lcom/android/tools/r8/internal/vL;
.super Lcom/android/tools/r8/internal/XY;
.source "SourceFile"


# static fields
.field public static final h:Lcom/android/tools/r8/internal/vL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/vL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/vL;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/vL;->h:Lcom/android/tools/r8/internal/vL;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "getJvmFlags(Lkotlin/metadata/KmProperty;)I"

    const/4 v1, 0x1

    const-class v2, Lcom/android/tools/r8/internal/wL;

    const-string v3, "jvmFlags"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/tools/r8/internal/XY;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lcom/android/tools/r8/internal/vQ;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object v0, Lcom/android/tools/r8/internal/wL;->a:[Lcom/android/tools/r8/internal/XY;

    invoke-static {p2}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/XL;

    move-result-object p2

    iput p1, p2, Lcom/android/tools/r8/internal/XL;->a:I

    return-void
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/vQ;

    sget-object v0, Lcom/android/tools/r8/internal/wL;->a:[Lcom/android/tools/r8/internal/XY;

    invoke-static {p1}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/vQ;)Lcom/android/tools/r8/internal/XL;

    move-result-object p1

    iget p1, p1, Lcom/android/tools/r8/internal/XL;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
