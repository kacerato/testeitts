.class public final synthetic Lcom/android/tools/r8/internal/X81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/fo0;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/X81;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Tn0;Ljava/util/regex/Matcher;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/X81;->a:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/do0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Tn0;Ljava/util/regex/Matcher;)Z

    move-result p1

    return p1
.end method
