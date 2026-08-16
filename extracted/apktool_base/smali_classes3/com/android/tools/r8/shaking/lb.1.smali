.class public final synthetic Lcom/android/tools/r8/shaking/lb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/es0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/V0;

.field public final synthetic b:Lcom/android/tools/r8/shaking/N;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/android/tools/r8/internal/ns0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/V0;Lcom/android/tools/r8/shaking/N;ZLcom/android/tools/r8/internal/ns0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/lb;->a:Lcom/android/tools/r8/shaking/V0;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/lb;->b:Lcom/android/tools/r8/shaking/N;

    iput-boolean p3, p0, Lcom/android/tools/r8/shaking/lb;->c:Z

    iput-object p4, p0, Lcom/android/tools/r8/shaking/lb;->d:Lcom/android/tools/r8/internal/ns0;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/shaking/lb;->a:Lcom/android/tools/r8/shaking/V0;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/lb;->b:Lcom/android/tools/r8/shaking/N;

    iget-boolean v2, p0, Lcom/android/tools/r8/shaking/lb;->c:Z

    iget-object v3, p0, Lcom/android/tools/r8/shaking/lb;->d:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/shaking/V0;->a(Lcom/android/tools/r8/shaking/N;ZLcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/z4;

    move-result-object v0

    return-object v0
.end method
