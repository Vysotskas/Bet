{{ content() }}

<div class="well well-small">
	<h4>Управление видами спорта</h4>
	<p>Здесь представлены все виды спорта и основные действия над ними.</p>
</div>

<p class="text-right"><a href="/sportkind/add" class="btn btn-primary">Добавить вид спорта</a></p>

{% if sports is defined %}
<table class="table table-bordered">
	<thead>
		<th style="text-align: center; vertical-align: middle;">#</th>
		<th style="text-align: center; vertical-align: middle;">Название вида спорта</th>
		<th style="text-align: center; vertical-align: middle;" width="30%">Действия</th>
	</thead>
	<tbody>
	{% for sport in sports %}
		<tr>
			<td style="text-align: center; vertical-align: middle;">{{ sport.getID() }}</td>
			<td style="text-align: center; vertical-align: middle;">{{ sport.getName()|e }}</td>
			<td style="text-align: center; vertical-align: middle;">
				<a href="/sportkind/edit/{{ sport.getID() }}" class="btn btn-default">Редактировать</a> <a href="/sportkind/delete/{{ sport.getID() }}" class="btn btn-default">Удалить</a>
			</td>
		</tr>
	{% endfor %}
	</tbody>
</table>
{% endif %}
