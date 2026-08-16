.class public final synthetic Lcom/android/tools/r8/internal/hQ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Kq0;

.field public final synthetic c:Lcom/android/tools/r8/internal/pf;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/pf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/hQ0;->b:Lcom/android/tools/r8/internal/Kq0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/hQ0;->c:Lcom/android/tools/r8/internal/pf;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/hQ0;->b:Lcom/android/tools/r8/internal/Kq0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/hQ0;->c:Lcom/android/tools/r8/internal/pf;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/Oq0;->a(Lcom/android/tools/r8/internal/Kq0;Lcom/android/tools/r8/internal/pf;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
