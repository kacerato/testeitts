.class public final Lcom/android/tools/r8/internal/Cb0;
.super Lcom/android/tools/r8/internal/D40;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final b:Lcom/android/tools/r8/internal/Cb0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Cb0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Cb0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Cb0;->b:Lcom/android/tools/r8/internal/Cb0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/D40;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/android/tools/r8/internal/Db0;

    check-cast p2, Lcom/android/tools/r8/internal/Db0;

    sget-object v0, Lcom/android/tools/r8/internal/yf;->a:Lcom/android/tools/r8/internal/wf;

    iget-object v1, p1, Lcom/android/tools/r8/internal/Db0;->b:Lcom/android/tools/r8/internal/xi;

    iget-object v2, p2, Lcom/android/tools/r8/internal/Db0;->b:Lcom/android/tools/r8/internal/xi;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/wf;->a(Lcom/android/tools/r8/internal/xi;Lcom/android/tools/r8/internal/xi;)Lcom/android/tools/r8/internal/yf;

    move-result-object v0

    iget-object p1, p1, Lcom/android/tools/r8/internal/Db0;->c:Lcom/android/tools/r8/internal/xi;

    iget-object p2, p2, Lcom/android/tools/r8/internal/Db0;->c:Lcom/android/tools/r8/internal/xi;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/yf;->a(Lcom/android/tools/r8/internal/xi;Lcom/android/tools/r8/internal/xi;)Lcom/android/tools/r8/internal/yf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yf;->a()I

    move-result p1

    return p1
.end method
