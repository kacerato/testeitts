.class public final Lcom/android/tools/r8/internal/uQ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/LinkedHashMap;)V
    .locals 1

    const-string v0, "fileFacades"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/uQ;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/android/tools/r8/internal/uQ;->b:Ljava/util/LinkedHashMap;

    return-void
.end method
