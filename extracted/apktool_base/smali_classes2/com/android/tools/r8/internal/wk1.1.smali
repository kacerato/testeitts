.class public final synthetic Lcom/android/tools/r8/internal/wk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/tools/r8/internal/FT;

.field public final synthetic c:Lcom/android/tools/r8/internal/FT;

.field public final synthetic d:Lcom/android/tools/r8/internal/Pe0;

.field public final synthetic e:Lcom/android/tools/r8/internal/Pe0;


# direct methods
.method public synthetic constructor <init>(ILcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/Pe0;Lcom/android/tools/r8/internal/Pe0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/wk1;->a:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/wk1;->b:Lcom/android/tools/r8/internal/FT;

    iput-object p3, p0, Lcom/android/tools/r8/internal/wk1;->c:Lcom/android/tools/r8/internal/FT;

    iput-object p4, p0, Lcom/android/tools/r8/internal/wk1;->d:Lcom/android/tools/r8/internal/Pe0;

    iput-object p5, p0, Lcom/android/tools/r8/internal/wk1;->e:Lcom/android/tools/r8/internal/Pe0;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 6

    iget v0, p0, Lcom/android/tools/r8/internal/wk1;->a:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/wk1;->b:Lcom/android/tools/r8/internal/FT;

    iget-object v2, p0, Lcom/android/tools/r8/internal/wk1;->c:Lcom/android/tools/r8/internal/FT;

    iget-object v3, p0, Lcom/android/tools/r8/internal/wk1;->d:Lcom/android/tools/r8/internal/Pe0;

    iget-object v4, p0, Lcom/android/tools/r8/internal/wk1;->e:Lcom/android/tools/r8/internal/Pe0;

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/mS;->a(ILcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/FT;Lcom/android/tools/r8/internal/Pe0;Lcom/android/tools/r8/internal/Pe0;I)V

    return-void
.end method
