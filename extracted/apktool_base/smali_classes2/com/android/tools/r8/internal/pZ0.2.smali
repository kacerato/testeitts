.class public final synthetic Lcom/android/tools/r8/internal/pZ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ZH;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Va;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Va;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/pZ0;->a:Lcom/android/tools/r8/internal/Va;

    iput p2, p0, Lcom/android/tools/r8/internal/pZ0;->b:I

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/pZ0;->a:Lcom/android/tools/r8/internal/Va;

    iget v1, p0, Lcom/android/tools/r8/internal/pZ0;->b:I

    check-cast p2, Lcom/android/tools/r8/internal/jy;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/Va;->a(IILcom/android/tools/r8/internal/jy;)V

    return-void
.end method
