.class public final synthetic Lcom/android/tools/r8/Q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/android/tools/r8/StringConsumer;

.field public final synthetic d:Lcom/android/tools/r8/internal/Ef0;


# direct methods
.method public synthetic constructor <init>(ZLcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/internal/Ef0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/Q1;->b:Z

    iput-object p2, p0, Lcom/android/tools/r8/Q1;->c:Lcom/android/tools/r8/StringConsumer;

    iput-object p3, p0, Lcom/android/tools/r8/Q1;->d:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/tools/r8/Q1;->b:Z

    iget-object v1, p0, Lcom/android/tools/r8/Q1;->c:Lcom/android/tools/r8/StringConsumer;

    iget-object v2, p0, Lcom/android/tools/r8/Q1;->d:Lcom/android/tools/r8/internal/Ef0;

    check-cast p1, Lcom/android/tools/r8/shaking/w3;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/ExtractR8Rules;->b(ZLcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/shaking/w3;)V

    return-void
.end method
