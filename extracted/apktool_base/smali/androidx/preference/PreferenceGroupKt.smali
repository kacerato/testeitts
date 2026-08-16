.class public final Landroidx/preference/PreferenceGroupKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreferenceGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreferenceGroup.kt\nandroidx/preference/PreferenceGroupKt\n*L\n1#1,93:1\n56#1:94\n56#1:95\n*E\n*S KotlinDebug\n*F\n+ 1 PreferenceGroup.kt\nandroidx/preference/PreferenceGroupKt\n*L\n59#1:94\n62#1:95\n*E\n"
.end annotation


# direct methods
.method public static final contains(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;)Z
    .locals 4

    const-string v0, "$this$contains"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static final forEach(Landroidx/preference/PreferenceGroup;LMf/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            "LMf/l<",
            "-",
            "Landroidx/preference/Preference;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$forEach"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {p0, v1}, Landroidx/preference/PreferenceGroupKt;->get(Landroidx/preference/PreferenceGroup;I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-interface {p1, v2}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final forEachIndexed(Landroidx/preference/PreferenceGroup;LMf/p;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            "LMf/p<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/preference/Preference;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$forEachIndexed"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1}, Landroidx/preference/PreferenceGroupKt;->get(Landroidx/preference/PreferenceGroup;I)Landroidx/preference/Preference;

    move-result-object v3

    invoke-interface {p1, v2, v3}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final get(Landroidx/preference/PreferenceGroup;I)Landroidx/preference/Preference;
    .locals 3

    const-string v0, "$this$get"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final get(Landroidx/preference/PreferenceGroup;Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Landroidx/preference/PreferenceGroup;",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    const-string v0, "$this$get"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public static final getChildren(Landroidx/preference/PreferenceGroup;)LXf/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "LXf/m<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$children"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/preference/PreferenceGroupKt$children$1;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceGroupKt$children$1;-><init>(Landroidx/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public static final getSize(Landroidx/preference/PreferenceGroup;)I
    .locals 1

    const-string v0, "$this$size"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    return p0
.end method

.method public static final isEmpty(Landroidx/preference/PreferenceGroup;)Z
    .locals 1

    const-string v0, "$this$isEmpty"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isNotEmpty(Landroidx/preference/PreferenceGroup;)Z
    .locals 1

    const-string v0, "$this$isNotEmpty"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final iterator(Landroidx/preference/PreferenceGroup;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "Ljava/util/Iterator<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$iterator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/preference/PreferenceGroupKt$iterator$1;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceGroupKt$iterator$1;-><init>(Landroidx/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public static final minusAssign(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;)V
    .locals 1

    const-string v0, "$this$minusAssign"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public static final plusAssign(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;)V
    .locals 1

    const-string v0, "$this$plusAssign"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method
