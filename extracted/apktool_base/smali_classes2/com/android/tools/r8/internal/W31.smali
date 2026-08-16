.class public final synthetic Lcom/android/tools/r8/internal/W31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/JI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/JI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/W31;->b:Lcom/android/tools/r8/internal/JI;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/W31;->b:Lcom/android/tools/r8/internal/JI;

    check-cast p1, Lcom/android/tools/r8/internal/EI;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Z9;->a(Lcom/android/tools/r8/internal/JI;Lcom/android/tools/r8/internal/EI;)Lcom/android/tools/r8/internal/DI;

    move-result-object p1

    return-object p1
.end method
