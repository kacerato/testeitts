.class public final synthetic Lcom/android/tools/r8/tracereferences/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/tracereferences/i;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/tracereferences/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/Y;->b:Lcom/android/tools/r8/tracereferences/i;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/Y;->b:Lcom/android/tools/r8/tracereferences/i;

    check-cast p1, Lcom/android/tools/r8/graph/Z4$c;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/tracereferences/i;->a(Lcom/android/tools/r8/graph/Z4$c;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    return-object p1
.end method
