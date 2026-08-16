.class public final synthetic Lcom/android/tools/r8/E1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lv$a;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/android/tools/r8/utils/i$a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/android/tools/r8/utils/i$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/E1;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/android/tools/r8/E1;->b:Lcom/android/tools/r8/utils/i$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/E1;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/android/tools/r8/E1;->b:Lcom/android/tools/r8/utils/i$a;

    invoke-static {v0, v1}, Lcom/android/tools/r8/ExtractMarker;->g(Ljava/util/List;Lcom/android/tools/r8/utils/i$a;)V

    return-void
.end method
