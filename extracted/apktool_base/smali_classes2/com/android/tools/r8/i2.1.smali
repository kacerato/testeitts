.class public final synthetic Lcom/android/tools/r8/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/es0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/h;

.field public final synthetic b:Lcom/android/tools/r8/internal/ns0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/ns0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/i2;->a:Lcom/android/tools/r8/graph/h;

    iput-object p2, p0, Lcom/android/tools/r8/i2;->b:Lcom/android/tools/r8/internal/ns0;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/i2;->a:Lcom/android/tools/r8/graph/h;

    iget-object v1, p0, Lcom/android/tools/r8/i2;->b:Lcom/android/tools/r8/internal/ns0;

    invoke-static {v0, v1}, Lcom/android/tools/r8/GlobalSyntheticsGenerator;->f(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/y;

    move-result-object v0

    return-object v0
.end method
