.class public final synthetic Lcom/android/tools/r8/tracereferences/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/diagnostic/internal/l;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/diagnostic/internal/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/G;->a:Lcom/android/tools/r8/diagnostic/internal/l;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/G;->a:Lcom/android/tools/r8/diagnostic/internal/l;

    check-cast p1, Lcom/android/tools/r8/references/FieldReference;

    check-cast p2, Ljava/util/Map;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/tracereferences/TraceReferencesCheckConsumer;->h(Lcom/android/tools/r8/diagnostic/internal/l;Lcom/android/tools/r8/references/FieldReference;Ljava/util/Map;)V

    return-void
.end method
