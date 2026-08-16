.class public final synthetic Lcom/android/tools/r8/internal/IF0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/GS;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/GS;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/IF0;->a:Lcom/android/tools/r8/internal/GS;

    iput p2, p0, Lcom/android/tools/r8/internal/IF0;->b:I

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/IF0;->a:Lcom/android/tools/r8/internal/GS;

    iget v1, p0, Lcom/android/tools/r8/internal/IF0;->b:I

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/GS;->a(II)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1
.end method
