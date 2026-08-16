.class public final synthetic Lcom/android/tools/r8/kotlin/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/b2;


# instance fields
.field public final synthetic b:Ljava/lang/StringBuilder;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/f2;->b:Ljava/lang/StringBuilder;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/f2;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/f2;->b:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/kotlin/f2;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method
