.class public final synthetic Lcom/android/tools/r8/internal/gq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/SourceFileProvider;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Lcom/android/tools/r8/SourceFileEnvironment;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lcom/android/tools/r8/SourceFileEnvironment;->getMapId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
