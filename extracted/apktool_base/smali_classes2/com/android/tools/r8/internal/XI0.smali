.class public final synthetic Lcom/android/tools/r8/internal/XI0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/By;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/XI0;->b:Ljava/util/List;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/XI0;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/XI0;->b:Ljava/util/List;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/XI0;->c:Z

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/util/List;ZLjava/lang/CharSequence;I)Lcom/android/tools/r8/internal/p50;

    move-result-object p1

    return-object p1
.end method
