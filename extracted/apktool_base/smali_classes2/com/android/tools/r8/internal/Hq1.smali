.class public final synthetic Lcom/android/tools/r8/internal/Hq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/QM;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/QM;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Hq1;->b:Lcom/android/tools/r8/internal/QM;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hq1;->b:Lcom/android/tools/r8/internal/QM;

    check-cast p1, Lcom/android/tools/r8/internal/JO;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/qP;->a(Lcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/JO;)Lcom/android/tools/r8/internal/PM;

    move-result-object p1

    return-object p1
.end method
