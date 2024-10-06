package sample

import (
	"net/http"

	"github.com/labstack/echo/v4"
)

func GetSample(c echo.Context) error {
	return c.JSON(http.StatusOK, "Hello, World!")
}
