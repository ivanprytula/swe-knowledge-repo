# mypy: ignore-errors


# Keywords

class Foo:
    pass


class Spamm(Foo):
    pass


def main(name: str, age: int, salary, ):  # fmt: skip
    """
    # noqa: <comma-separated-rules>

    """
    # fmt: off
    for _char in "foo spamm eggs":
        pass
    # fmt: on

    return f"Hello, {name}. You are {age} years old. Your salary: {salary}"
