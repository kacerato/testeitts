.class public final synthetic Lcom/android/tools/r8/internal/fI0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ljava/util/function/Predicate;

.field public final synthetic c:Lcom/android/tools/r8/internal/JI;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/JI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/fI0;->b:Ljava/util/function/Predicate;

    iput-object p2, p0, Lcom/android/tools/r8/internal/fI0;->c:Lcom/android/tools/r8/internal/JI;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/fI0;->b:Ljava/util/function/Predicate;

    iget-object v1, p0, Lcom/android/tools/r8/internal/fI0;->c:Lcom/android/tools/r8/internal/JI;

    check-cast p1, Lcom/android/tools/r8/internal/EI;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/I00;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/JI;Lcom/android/tools/r8/internal/EI;)Lcom/android/tools/r8/internal/DI;

    move-result-object p1

    return-object p1
.end method
