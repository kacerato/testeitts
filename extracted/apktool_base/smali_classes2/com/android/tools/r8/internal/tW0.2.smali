.class public final synthetic Lcom/android/tools/r8/internal/tW0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Tr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/T00;

.field public final synthetic b:Lcom/android/tools/r8/internal/m80;

.field public final synthetic c:Lcom/android/tools/r8/internal/Ef;

.field public final synthetic d:Lcom/android/tools/r8/internal/M70;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/T00;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/M70;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/tW0;->a:Lcom/android/tools/r8/internal/T00;

    iput-object p2, p0, Lcom/android/tools/r8/internal/tW0;->b:Lcom/android/tools/r8/internal/m80;

    iput-object p3, p0, Lcom/android/tools/r8/internal/tW0;->c:Lcom/android/tools/r8/internal/Ef;

    iput-object p4, p0, Lcom/android/tools/r8/internal/tW0;->d:Lcom/android/tools/r8/internal/M70;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/tW0;->a:Lcom/android/tools/r8/internal/T00;

    iget-object v1, p0, Lcom/android/tools/r8/internal/tW0;->b:Lcom/android/tools/r8/internal/m80;

    iget-object v2, p0, Lcom/android/tools/r8/internal/tW0;->c:Lcom/android/tools/r8/internal/Ef;

    iget-object v3, p0, Lcom/android/tools/r8/internal/tW0;->d:Lcom/android/tools/r8/internal/M70;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/graph/H2;

    move-object v5, p2

    check-cast v5, Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/T00;->a(Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/graph/H2;Ljava/util/List;)V

    return-void
.end method
